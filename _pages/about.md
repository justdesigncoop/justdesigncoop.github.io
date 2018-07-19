---
title: About
layout: default
permalink: /about
published: true
---

* table of contents
{: toc .list-unstyled .list-group-item-light .toc}

### Our Vision

There are communities throughout the world disconnected from society’s daily rights: clean water, sanitation, affordable living, quality education, personal rights. Often, they simply need the opportunity to thrive in today’s world.

The JustDesign team believes in equality and capacity building; but that means more than simply helping those in need. It goes beyond that service to create partnerships that lead to sustainable and anti-oppressive impact.

We believe in civic pride and public service. And to do that, we must emerge out of our spaces of isolation, recognizing that our decisions affect others. Let’s build and enhance pathways that allow people to connect with each other, on both personal and institutional levels -- to develop inclusive spaces: green, empowering, programmatic, and social spaces. To share our stories (including failures), to be self-aware on what hasn’t worked, in creating a sense of community that will result in collaborative solutions.

This does not limit us to solutions in the technical field, because our vision of solutions will also include activism, policy, education, and public health (physical and mental). Humanity is what drives us; our mission is to connect, to help develop a better quality of life for all. 

### Anti-Oppression Statement





### Our Members

<div class="">
	{% for author in site.data.authors %}
		<div class="media mb-3">
			{% if author[1].avatar %}
			  {% capture avatar %}{{ author[1].avatar }}{% endcapture %}
			{% else %}
			  {% assign avatar = site.avatar %}
			{% endif %}
			
			{% if avatar %}
			  <div class="mr-3">
				<img class="media-object" src=
				  {% if avatar contains "://" %}
					"{{ avatar }}"
				  {% else %}
					"{{ avatar | absolute_url }}"
				  {% endif %}
				  alt="" style="max-width:175px">
			  </div>
			{% endif %}
			
			<div class="media-body">
				<h4 class="media-heading d-inline">      
					{{ author[1].name }}

				</h4>
				
				<h6 class="d-inline">
					{{ author[1].location }}
				</h6>
				
				<ul class="list-unstyled list-inline" style="margin-bottom: 0px;">
				  {% if author[1].uri %}
					<li class="list-inline-item">
					  <a href="{{ author[1].uri }}" itemprop="url">
						<i class="fa fa-chain" aria-hidden="true"></i></a>
					</li>
				  {% endif %}

				  {% if author[1].email %}
					<li class="list-inline-item">
					  <a href="mailto:{{ author[1].email }}">
						<meta itemprop="email" content="{{ author[1].email }}" />
						<i class="fa fa-envelope" aria-hidden="true"></i></a>
					</li>
				  {% endif %}

				  {% if author[1].twitter %}
					<li class="list-inline-item">
					  <a href="https://twitter.com/{{ author[1].twitter }}" itemprop="sameAs">
						<i class="fa fa-twitter" aria-hidden="true"></i></a>
					</li>
				  {% endif %}

				  {% if author[1].facebook %}
					<li class="list-inline-item">
					  <a href="https://www.facebook.com/{{ author[1].facebook }}" itemprop="sameAs">
						<i class="fa fa-facebook" aria-hidden="true"></i></a>
					</li>
				  {% endif %}

				  {% if author[1].linkedin %}
					<li class="list-inline-item">
					  <a href="https://www.linkedin.com/in/{{ author[1].linkedin }}" itemprop="sameAs">
						<i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</li>
				  {% endif %}

				  {% if author[1].instagram %}
					<li class="list-inline-item">
					  <a href="https://instagram.com/{{ author[1].instagram }}" itemprop="sameAs">
						<i class="fa  fa-instagram" aria-hidden="true"></i></a>
					</li>
				  {% endif %}

				  {% if author[1].github %}
					<li class="list-inline-item">
					  <a href="https://github.com/{{ author[1].github }}" itemprop="sameAs">
						<i class="fa  fa-github" aria-hidden="true"></i></a>
					</li>
				  {% endif %}
				</ul>
			
				{% if author[1].bio %}
					{{ author[1].bio | markdownify }}
				{% endif %}
			</div>
		</div>
	{% endfor %}
</div>
