# === makefile ------------------------------------------------------------===
# Copyright © 2012 by its contributors (see AUTHORS for details). Distributed
# under the Creative Commons Attribution-ShareAlike 3.0 Unported License, the
# contents of which may be found in the accompanying file LICENSE or from the
# web address http://creativecommons.org/licenses/by-sa/3.0/deed.en_US.
# ===----------------------------------------------------------------------===

ROOT=$(shell pwd)
CACHE=${ROOT}/.cache
RBENV=${ROOT}/.pkg

-include Makefile.local

.PHONY: all
all: ${RBENV}/.stamp-h
	RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv exec bundle exec \
	    jekyll --no-server --no-auto --pygments --no-lsi --safe

.PHONY: shell
run:  ${RBENV}/.stamp-h
	RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv exec bundle exec \
	    jekyll --server --auto --pygments --no-lsi --safe

.PHONY: shell
shell: all
	RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv exec bundle exec \
	    irb

.PHONY: mostlyclean
mostlyclean:

.PHONY: clean
clean: mostlyclean
	-rm -rf "${RBENV}"

.PHONY: distclean
distclean: clean
	-rm -rf "${CACHE}"
	-rm -rf Makefile.local

.PHONY: maintainer-clean
maintainer-clean: distclean
	@echo 'This command is intended for maintainers to use; it'
	@echo 'deletes files that may need special tools to rebuild.'

# ===--------------------------------------------------------------------===

${CACHE}/rbenv/rbenv-0.4.0.tar.gz:
	mkdir -p ${CACHE}/rbenv
	curl -L 'https://codeload.github.com/sstephenson/rbenv/tar.gz/v0.4.0' >'$@' || { rm -f '$@'; exit 1; }

${CACHE}/rbenv/ruby-build-20131028.tar.gz:
	mkdir -p ${CACHE}/rbenv
	curl -L 'https://codeload.github.com/sstephenson/ruby-build/tar.gz/v20131028' >'$@' || { rm -f '$@'; exit 1; }

${CACHE}/rbenv/yaml-0.1.4.tar.gz:
	mkdir -p ${CACHE}/rbenv
	curl -L 'http://dqw8nmjcqpjn7.cloudfront.net/36c852831d02cf90508c29852361d01b' >'$@' || { rm -f '$@'; exit 1; }

${CACHE}/rbenv/ruby-1.9.3-p448.tar.gz:
	mkdir -p ${CACHE}/rbenv
	curl -L 'http://dqw8nmjcqpjn7.cloudfront.net/a893cff26bcf351b8975ebf2a63b1023' >'$@' || { rm -f '$@'; exit 1; }

${CACHE}/rbenv/rbenv-1.9.3-p448-base.tar.gz: ${CACHE}/rbenv/rbenv-0.4.0.tar.gz ${CACHE}/rbenv/ruby-build-20131028.tar.gz ${CACHE}/rbenv/yaml-0.1.4.tar.gz ${CACHE}/rbenv/ruby-1.9.3-p448.tar.gz
	-rm -rf "${RBENV}"
	mkdir -p "${RBENV}"

	# rbenv (and its plugins, ruby-build and rbenv-gemset) is used to build,
	# install, and manage ruby environments:
	tar \
	    -C "${RBENV}" --strip-components 1 --gzip \
	    -xf "${CACHE}"/rbenv/rbenv-0.4.0.tar.gz
	mkdir -p "${RBENV}"/plugins/ruby-build
	tar \
	    -C "${RBENV}"/plugins/ruby-build --strip-components 1 --gzip \
	    -xf "${CACHE}"/rbenv/ruby-build-20131028.tar.gz

	mkdir -p "${RBENV}"/cache
	ln -s "${CACHE}"/rbenv/yaml-0.1.4.tar.gz      "${RBENV}"/cache
	ln -s "${CACHE}"/rbenv/ruby-1.9.3-p448.tar.gz "${RBENV}"/cache

	# Trigger a build and install of our required ruby version:
	if [ "x`uname -s`" = "xDarwin" ]; then \
	    CONFIGURE_OPTS=--without-gcc \
	    RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv install 1.9.3-p448; \
	else \
	    RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv install 1.9.3-p448; \
	fi
	- RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv rehash
	echo 1.9.3-p448 >"${RBENV}"/.rbenv-version

	# Snapshot the Ruby environment
	tar -C "${RBENV}" --gzip -cf "$@" .
	rm -rf "${RBENV}"

Gemfile.lock: Gemfile
	touch "$@"
${CACHE}/rbenv/rbenv-1.9.3-p448-extras.tar.gz: ${CACHE}/rbenv/rbenv-1.9.3-p448-base.tar.gz Gemfile.lock
	-rm -rf "${RBENV}"
	mkdir -p "${RBENV}"

	# Uncompress saved Ruby environment
	tar -C "${RBENV}" --gzip -xf "${CACHE}"/rbenv/rbenv-1.9.3-p448-base.tar.gz
	mv "${RBENV}"/.rbenv-version "${ROOT}"

	find "${RBENV}" -not -type d -print0 >"${ROOT}"/.pkglist

	# Install bundler & gemset dependencies:
	  RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv exec gem install bundler
	- RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv rehash
	  RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv exec bundle install
	- RBENV_ROOT="${RBENV}" "${RBENV}"/bin/rbenv rehash

	# Snapshot the Ruby environment
	cat "${ROOT}"/.pkglist | xargs -0 rm -rf
	tar -C "${RBENV}" --gzip -cf "$@" .
	rm -rf "${RBENV}" "${ROOT}"/.pkglist

.PHONY:
ruby-env: ${RBENV}/.stamp-h

${RBENV}/.stamp-h: ${CACHE}/rbenv/rbenv-1.9.3-p448-base.tar.gz ${CACHE}/rbenv/rbenv-1.9.3-p448-extras.tar.gz
	-rm -rf "${RBENV}"
	mkdir -p "${RBENV}"

	# Uncompress saved Ruby environment
	tar -C "${RBENV}" --gzip -xf "${CACHE}"/rbenv/rbenv-1.9.3-p448-base.tar.gz
	tar -C "${RBENV}" --gzip -xf "${CACHE}"/rbenv/rbenv-1.9.3-p448-extras.tar.gz
	mv "${RBENV}"/.rbenv-version "${ROOT}"

	# All done!
	touch "$@"

# ===--------------------------------------------------------------------===
# End of File
# ===--------------------------------------------------------------------===
