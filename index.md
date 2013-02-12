---
layout: default
groups: ['primary']
menu: Home
title: Freicoin is easy to use digital complementary currency
---

<h1 class="main"><i>Frei</i><b>coin</b> is easy to use digital complementary currency</h1>

<div class="row">
  <div class="span4">
    <ul class="big_icons">
      <li><img src="/static/images/main/everyone.png" />For everyone</li>
    </ul>
  </div>
  <div class="span4">
    <ul class="big_icons">
      <li><img src="/static/images/main/scalable.png" />Easy scalable</li>
    </ul>
  </div>
  <div class="span4">
    <ul class="big_icons">
      <li><img src="/static/images/main/combines.png" />Combines better</li>
    </ul>
  </div>
</div>

<hr/>

<div class="row">
  <div class="span8">
    <ul class="big_icons">
      <li><img src="/static/images/main/download.png" /><b>Download</b> a special software</li>
      <li><img src="/static/images/main/install.png" /><b>Install</b> it on your computer.</li>
      <li><img src="/static/images/main/synchronize.png" />Wait while software <b>synchronizes</b> with network</li>
    </ul>
  </div>
  <div class="span4" style="padding-top:35px;">
    <ul id="download-list" class="nostyle">
{% for dl in site.freicoin.downloads %}
  {% if dl.osid %}
      <li id="{{ dl.osid }}" style="display:{% if dl.osid == 'Unknown' %}block{% else %}none{% endif %};">
<p style="margin-top:20px;text-align:center;"><a class="btn btn-success btn-large" href="{{ dl.link }}"><span class="download-content" style=""><span class="download-title">Download</span><span class="download-version">{{ site.freicoin.version }}</span><span class="download-name">{{ dl.name }}</span></span></a></p>
      </li>
  {% endif %}
{% endfor %}
    </ul>
  </div>
</div>

<script type="text/javascript" src="/static/js/custom.js">
</script>
<script type="text/javascript">
show_download();
</script>

<hr/>

<div class="row">
  <div class="span4">
    <ul class="big_icons">
      <li><img src="/static/images/main/medium.png" />Money is medium of exchange</li>
    </ul>
  </div>
  <div class="span4">
    <ul class="big_icons">
      <li><img src="/static/images/main/useless.png" />They is useless by themselves</li>
    </ul>
  </div>
  <div class="span4">
    <ul class="big_icons">
      <li><img src="/static/images/main/serves.png" />But serves needs of society</li>
    </ul>
  </div>
</div>
