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
		<li><img src="/static/images/os/win.png" class="os_icon" /><a href="{{ site.freicoind.downloads.win-exe.link }}">Windows (exe)</a> {{ site.freicoind.downloads.win-exe.size }}</li>
		<li><img src="/static/images/os/win.png" class="os_icon" /><a href="{{ site.freicoind.downloads.win-zip.link }}">Windows (zip)</a> {{ site.freicoind.downloads.win-zip.size }}</li>
		<li><img src="/static/images/os/osx-uni.png" class="os_icon" /><a href="{{ site.freicoind.downloads.macosx.link }}">Mac OS X</a> {{ site.freicoind.downloads.macosx.size }}</li>
		<li><img src="/static/images/os/linux.png" class="os_icon" /><a href="{{ site.freicoind.downloads.linux.link }}">Linux </a> {{ site.freicoind.downloads.linux.size }}</li>
		<li><img src="/static/images/os/src.png" class="os_icon" /><a href="{{ site.freicoind.downloads.source.link }}">Source </a> {{ site.freicoind.downloads.source.size }}</li>
	</ul>
</div>
