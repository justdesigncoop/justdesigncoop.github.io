---
title: Projects
layout: default
permalink: /projects
collection: projects
published: true
sort_by: date
sort_order: reverse
---

### Project Application

Would you like to partner with or hire JustDesign? Please visit our [project application form](https://goo.gl/forms/SHmwcbBfFthNbcB82).

The form just the first part of a longer conversation about your goals, your abilities, and your ideas for partnership or projects.

If you haven't already done so, we invite you to read about [our vision, our anti-oppression statement, and our members](/about).

### Projects

{% assign entries = site[page.collection] %}

{% if page.sort_by == 'title' %}
  {% if page.sort_order == 'reverse' %}
    {% assign entries = entries | sort: 'title' | reverse %}
  {% else %}
    {% assign entries = entries | sort: 'title' %}
  {% endif %}
{% elsif page.sort_by == 'date' %}
  {% if page.sort_order == 'reverse' %}
    {% assign entries = entries | sort: 'date' | reverse %}
  {% else %}
    {% assign entries = entries | sort: 'date' %}
  {% endif %}
{% endif %}

{% for post in entries %}
  <div class="media">
    {% if post.header.teaser %}
      {% capture teaser %}{{ post.header.teaser }}{% endcapture %}
    {% else %}
      {% assign teaser = site.teaser %}
    {% endif %}

      {% if post.id %}
        {% assign title = post.title | markdownify | remove: "<p>" | remove: "</p>" %}
      {% else %}
        {% assign title = post.title %}
      {% endif %}

      {% if teaser %}
        <div class="mr-3 mb-3">
        <a class="pull-left" href="{{ post.url | absolute_url }}" rel="permalink"><img class="media-object" src=
          {% if teaser contains "://" %}
          "{{ teaser }}"
          {% else %}
          "{{ teaser | absolute_url }}"
          {% endif %}
          alt="" style="max-width:250px"></a>
        </div>
      {% endif %}

      <div class="media-body">
        <h4 class="media-heading">
          {% if post.link %}
            <a href="{{ post.link }}">{{ title }}</a> <a href="{{ post.url | absolute_url }}" rel="permalink"><i class="fa fa-link" aria-hidden="true" title="permalink"></i><span class="sr-only">Permalink</span></a>
            {% else %}
            <a href="{{ post.url | absolute_url }}" rel="permalink">{{ title }}</a>
          {% endif %}
        </h4>

        {% if post.client and site.data.clients[post.client] %}
          {% assign client = site.data.clients[post.client] %}

          <p class="text-muted">{{ client.name }}</p>
        {% endif %}

        {% if post.excerpt %}
          <p class="" itemprop="description">
            {{ post.excerpt | markdownify | strip_html | truncate: 320 }}
          </p>
        {% endif %}
      </div>
    </div>
  {% endfor %}
