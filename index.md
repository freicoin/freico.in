---
layout: default
groups: ['primary']
menu: Home
title: Freicoin - easy to use digital complementary currency
---
<div class="row">
  <div class="span12">
    <h1>Freicoin: easy to use digital complementary currency</h1>
    <p>In the old days, when nature was still almost untouched, people are invented <a href="http://en.wikipedia.org/wiki/History_of_money">money</a> to resolve issues with exchange of different kinds of goods. Money itself were a special product, scarce and important for life, and therefore are accepted by majority of humans. During this time they undergone many transformations: skins of sables and squirrels, cakes of salt, metallic objects, silk clothing. Pieces of precious metals and in further silver and gold coins become a first things that were not primary necessary for survival. But they were in limited amount and met the demands of people.</p>
    <p>This equilibrium was broken with coming of paper money. Paper (even colored) is not finite resource, and owner of printing press has huge advantage over other people who just uses such sort of money. Cards with electronic accounts are more expanded this inequality, which leads to stratification of society and raises many problems.</p>
    <p>Today all this strengthens movement toward alternative economic concepts. <a href="http://en.wikipedia.org/wiki/Local_currency">Local currencies</a> and <a href="http://en.wikipedia.org/wiki/Time_bank">time banks</a> often become are solutions of pressing problems of communities. But they not universal because applied only in small scale. Freicoin aims to be a medium of exchange for everyone: farmers and workers, teachers and doctors, lawyers and engineers. It easy scalable from close relations in community to long-distance connections between continents. Freicoin combines together modern computer technologies (<a href="http://en.wikipedia.org/wiki/Cryptography">cryptography</a>, <a href="http://en.wikipedia.org/wiki/Peer-to-peer">p2p network</a>, <a href="http://en.wikipedia.org/wiki/Proof_of_work">proof of work system</a>) and <a href="http://en.wikipedia.org/wiki/Worgl_Experiment">proven</a> during the Great Depression <a href="http://en.wikipedia.org/wiki/Freigeld">economic theory</a> of Silvio Gesell.</p>
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
