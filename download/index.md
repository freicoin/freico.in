---
layout: default
groups: ['primary']
menu: Download
title: Download Freicoin
---

<h1>Download</h1>

*NOTE*: Release v0.8.6.1-4 includes a scheduled soft-fork change to the consensus rules to simplify the code involved in demurrage calculations. Upon activation by a mining threshold of 95%, older clients will no longer generate valid candidate blocks. If you are operating Freicoin mining equipment, please upgrade your daemon before soft-fork activation.

Latest version <strong>{{ site.freicoin.version }}</strong>, released <strong>{{ site.freicoin.release_date|date:"%d %B %Y" }}</strong>

<div>
	<ul class="nostyle">
{% for dl in site.freicoin.downloads %}
		<li><img src="{{ dl.icon }}" class="os_icon" /><a href="{{ dl.link }}">{{ dl.name }}</a> {{ dl.size }}</li>
{% endfor %}
	</ul>
</div>
