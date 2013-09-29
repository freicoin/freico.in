---
layout: default
groups: ['primary']
menu: Download
title: Download Freicoin
---

<h1>Download</h1>

*NOTE*: A hard-fork change is scheduled for 15 Dec 2013. Please make sure that you are running at least version v0.8.3-1 by this date. Older clients will be at risk for not synchronizing properly after this date.

Latest version <strong>{{ site.freicoin.version }}</strong>, released <strong>{{ site.freicoin.release_date|date:"%d %B %Y" }}</strong>

<div>
	<ul class="nostyle">
{% for dl in site.freicoin.downloads %}
		<li><img src="{{ dl.icon }}" class="os_icon" /><a href="{{ dl.link }}">{{ dl.name }}</a> {{ dl.size }}</li>
{% endfor %}
	</ul>
</div>
