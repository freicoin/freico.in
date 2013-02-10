---
layout: default
groups: ['primary']
menu: Download
title: Download Freicoin
---

<h1>Download</h1>

<p class="big_font">Latest version <strong>{{ site.freicoin.version }}</strong>, released <strong>{{ site.freicoin.release_date|date:"%d %B %Y" }}</strong></p>

<div>
	<ul class="big_icons">
{% for dl in site.freicoin.downloads %}
		<li><img src="{{ dl.icon }}" /><a href="{{ dl.link }}">{{ dl.name }}</a> {{ dl.size }}</li>
{% endfor %}
	</ul>
</div>
