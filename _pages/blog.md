---
layout: home
permalink: /blog/
author_profile: true
---

{% for post in site.posts %}
  {% include archive-single.html %}
{% endfor %}
