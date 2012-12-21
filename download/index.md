---
layout: default
groups: ['primary']
menu: Download
title: Download Freicoin
---

<h1>Download</h1>

Latest version <strong>{{ site.freicoind.version }}</strong>, released <strong>{{ site.freicoind.release_date|date:"%d %B %Y" }}</strong>

*Note: If you have participated in the beta or release candidate, you will first need to delete or rename your Freicoin data directory. On windows this is "%APPDATA%\Freicoin", on Mac OS X "~/Library/Application Support/Freicoin", and on Linux "~/.freicoin". Make sure that you backup these files if you need the keys contained in your old wallet (for example, you used the release candidate to generate your miner payout address).*

<div>
	<ul class="nostyle">
		<li><img src="/static/images/os/win.png" class="os_icon" /><a href="https://s3.amazonaws.com/in.freico.stable/freicoin-{{ site.freicoind.version }}-windows-setup.exe">Windows (exe)</a> ~11MB</li>
		<li><img src="/static/images/os/win.png" class="os_icon" /><a href="https://s3.amazonaws.com/in.freico.stable/freicoin-{{ site.freicoind.version }}-windows.zip">Windows (zip)</a> ~14MB</li>
		<li><img src="/static/images/os/osx-uni.png" class="os_icon" /><a href="https://s3.amazonaws.com/in.freico.stable/freicoin-{{ site.freicoind.version }}-macosx.dmg">Mac OS X</a> ~14MB</li>
		<li><img src="/static/images/os/linux.png" class="os_icon" /><a href="https://s3.amazonaws.com/in.freico.stable/freicoin-{{ site.freicoind.version }}-linux.tar.xz">Linux (tar.xz, 32/64 bit)</a> ~17MB</li>
		<li><img src="/static/images/os/src.png" class="os_icon" /><a href="https://github.com/freicoin/freicoin/archive/v{{ site.freicoind.version }}.zip">Source (zip)</a> ~2MB</li>
	</ul>
</div>
