## freico.in ##
Website files for http://freico.in/

This project uses Jekyll to build a static website which is then served by Github pages. Once changes are merged into the `gh-pages` branch, a new version of the site is automatically built and deployed by Github.

To develop locally, scripts have been included to build a Github pages-like environment for your platform. Simply open a terminal application and use the included build scripts:

    $ git clone git://github.com/freicoin/freico.in
    $ cd freico.in && ./configure && make run

You will then be able to access the website locally from `http://localhost:4000/`, with changes automatically triggering a recompilation (just refresh your browser).
