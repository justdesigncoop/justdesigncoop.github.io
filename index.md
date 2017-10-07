---
layout: splash
permalink: /
published: true
intro: 
  - excerpt: 'JustDesign is a member-owned, multi-disciplinary, public-interest cooperative practicing rights-based, anti-oppressive, open source design.'
---

{% include feature_row id="intro" type="center" %}

### Recent Posts

{% for post in site.posts %}
  {% include archive-single.html %}
{% endfor %}


<!--
<a class="twitter-timeline" href="https://twitter.com/justdesigncoop?ref_src=twsrc%5Etfw">Tweets by justdesigncoop</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
-->

<!--
<h3 class="archive__subtitle" style="margin-top:0.2em">{{ site.data.ui-text[site.locale].recent_posts | default: "Recent Posts" }}</h3>

<div class="grid__wrapper">
  {% for post in site.posts %}
    {% include archive-single.html %}
  {% endfor %}
</div>
-->