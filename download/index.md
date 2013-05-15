---
layout: default
groups: ['primary']
menu: Download
title: Download Freicoin
---

<h1>Download</h1>

*NOTE*: On Wed, 15 May 2013 a hard-fork change was released with version v0.0.2-2. Within a couple of days of that date, only v0.0.2-2 or newer clients will be able to connect to the main Freicoin network. Please update _immediately_ if you haven't already!

Latest version <strong>{{ site.freicoin.version }}</strong>, released <strong>{{ site.freicoin.release_date|date:"%d %B %Y" }}</strong>

<div>
	<ul class="nostyle">
{% for dl in site.freicoin.downloads %}
		<li><img src="{{ dl.icon }}" class="os_icon" /><a href="{{ dl.link }}">{{ dl.name }}</a> {{ dl.size }}</li>
{% endfor %}
	</ul>
</div>
