---
layout: default
groups: ['primary']
menu: Download
title: Download Freicoin
---

<h1>Download</h1>

Latest version <strong>{{ site.freicoin.version }}</strong>, released <strong>{{ site.freicoin.release_date|date:"%d %B %Y" }}</strong>

*Note: If you have participated in the beta or release candidate, you will first need to delete or rename your Freicoin data directory. On windows this is "%APPDATA%\Freicoin", on Mac OS X "~/Library/Application Support/Freicoin", and on Linux "~/.freicoin". Make sure that you backup these files if you need the keys contained in your old wallet (for example, you used the release candidate to generate your miner payout address).*

<div>
	<ul class="nostyle">
{% for dl in site.freicoin.downloads %}
		<li><img src="{{ dl.icon }}" class="os_icon" /><a href="{{ dl.link }}">{{ dl.name }}</a> {{ dl.size }}</li>
{% endfor %}
	</ul>
</div>
