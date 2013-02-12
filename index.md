---
layout: default
groups: ['primary']
menu: Home
title: Freicoin - easy to use digital complementary currency
---
<div class="row">
  <div class="span12">
    <h1>Freicoin: easy to use digital complementary currency</h1>
    <p>Money was invented to resolve issues with exchange of different kinds of goods. In early times for this goal were used scarce and important for life products. All was changed with coming of paper money. They not primary necessary for survival and they not finite resource. Owner of printing press has huge advantage over other people who just uses such sort of money. This inequality leads to stratification of society and raises many problems.</p>
    <p>Today all this strengthens movement toward alternative economic concepts. Local currencies and time banks often become are solutions of pressing problems of communities. But they not universal because applied only in small scale. Freicoin aims to be a medium of exchange for everyone. It easy scalable from close relations in community to long-distance connections between continents. Freicoin combines together modern computer technologies and proven economic theory.</p>
    <p class="join">You can join to new economy and start use Freicoin right now in several simple steps:</p>
  </div>
</div>

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
