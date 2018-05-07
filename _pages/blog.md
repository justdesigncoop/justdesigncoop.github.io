---
title: Blog
layout: default
permalink: /blog
---

<div class="">
	<h4 class="pb-3 border-bottom">
		Latest posts
	</h4>
	{% for post in site.posts %}
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
				  alt="" style="max-width:175px"></a>
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
				
				<p class="">{{ post.date | date: "%B %d, %Y" }} by <a href="">{{ post.author }}</a></p>
			
				{% if post.excerpt %}
					<p class="" itemprop="description">
						{{ post.excerpt | markdownify | strip_html | truncate: 160 }}
					</p>
				{% endif %}
			</div>
		</div>
	{% endfor %}
</div>