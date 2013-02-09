---
layout: default
groups: ['primary']
menu: Home
title: Freicoin - peer-to-peer demurrage currency
---
<div class="row">
  <div class="span12">
    <h1>Freicoin: a P2P digital currency delivering freedom from usury</h1>
  </div>
  <div class="span8">
    <p>Freicoin is a <a href="http://en.wikipedia.org/wiki/Peer-to-peer">peer-to-peer</a> (P2P) currency based on the accounting concept of a <a href="https://en.bitcoin.it/wiki/Proof_of_work">proof-of-work block chain</a> used by Satoshi Nakamoto in the <a href="http://bitcoin.org/bitcoin.pdf">creation</a> of <a href="http://bitcoin.org/">Bitcoin</a>.</p>

    <p>Unlike Bitcoin, Freicoin has a <a href="http://en.wikipedia.org/wiki/Demurrage_%28currency%29">demurrage fee</a> that ensures its circulation and bearers of the currency pay this fee automatically. This demurrage fee was proposed by <a href="http://en.wikipedia.org/wiki/Silvio_Gesell">Silvio Gesell</a> to eliminate the privileged position held by money compared with capital goods, which is the <a href="http://archive.org/details/TheNaturalEconomicOrder">underlying cause</a> of the boom/bust business cycle and the entrenchment of the financial elite, and has been tested <a href="http://en.wikipedia.org/wiki/Chiemgauer">several times</a> with <a href="http://en.wikipedia.org/wiki/Worgl_Experiment#The_W.C3.B6rgl_Experiment">positive results</a>.</p>
  </div>

  <div class="span4">
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

<div class="row">
  <div class="span4">
    <h3>0% interest, forever</h3>
    <p>Freicoin's parameters are carefully chosen to eliminate the basic interest component of investments, called the liquidity premium by economists. Usurious non-zero basic interest distorts the free market, incentivises poisonous greed, excess, and short-term thinking, and perpetuates a vicious cycle of boom/bust recessions.</p>
  </div>
  <div class="span4">
    <h3>Sustainable investments</h3>
    <p>Zero basic interest encourages sustainable investments, as long-term investments tend to be, by removing the time preference implicit inflationary (U.S. Dollar, Euro) or deflationary (Bitcoin) currencies. When business is conducted in Freicoin, participants value present and future holdings equally, and favor sustainable processes.</p>
  </div>
  <div class="span4">
    <h3>Stable long-term value</h3>
    <p>Demurrage forces freicoins to circulate at deliberately high rates. Separation of money's roles as store-of-value and medium-of-exchange allows money to flow when it is needed, in good times and bad. Our careful selection of governing parameters creates a currency whose value is stable with neither price inflation nor deflation.</p>
  </div>
  <div class="span12" style="text-align:center;">
    <p><a href="/about/">Read more »</a></p>
  </div>
</div>
