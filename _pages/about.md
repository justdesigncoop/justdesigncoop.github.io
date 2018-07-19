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

> The use of power to disempower, marginalize, silence or otherwise subordinate one social group or category, often in order to further empower and/or privilege the oppressor. Social oppression may not require formally established organizational support to achieve its desired effect; it may be applied on a more informal, yet more focused, individual basis.

–As defined by the Anti-Oppression Network

JustDesign Cooperative, LLC recognizes that existing systems and practices  naturally offer a power imbalance towards the people with the most privilege. Recognizing that this privilege can permeate through channels of interaction and decision making, we believe in practicing anti-oppression through all levels of our work.  The ways in which power imbalances occur are analyzed and prioritized within our projects, partnerships, and the way we treat each other. 

Our ongoing process of practicing anti-oppression is rooted in the following commitments:

#### Knowledge and introspection

We are committed to learning about systems and institutions of oppression, and challenging when oppressive systems and behaviors arise within the organization. We are committed to learning the histories of marginalized communities by learning from their voices and experiences. 

#### Examining privilege

Recognizing the role that privilege plays within anti-oppression, we aim to dismantle privilege in the context of oppression and (to the extent appropriate) leverage our own privilege to benefit our partners without overshadowing their experiences and voices.

- **Knowledge and introspection** - We are committed to learning about systems and institutions of oppression, and challenging when oppressive systems and behaviors arise within the organization. We are committed to learning the histories of marginalized communities by learning from their voices and experiences. 
- **Examining privilege** - Recognizing the role that privilege plays within anti-oppression, we aim to dismantle privilege in the context of oppression and (to the extent appropriate) leverage our own privilege to benefit our partners without overshadowing their experiences and voices.
- **Access and Integrity** -  Recognizing the importance of our work being transparent and equitable, we are committed to sharing our documents and projects openly, in a spirit of reducing barriers to entry in our work.  When our actions don’t live up to our values, we rely on our partners [call us in](https://everydayfeminism.com/2015/01/guide-to-calling-in/) to integrity.  We recognize that in an effort to be transparent, we are also documenting the majority of our work in English. We recognize that this creates a language barrier for access. We are working on translating these documents to be more accessible. 
- **Shifting power** - We are committed to analyzing the role of power within potential and existing projects. We strive to shift decision-making power towards partners, community members, and those less privileged to amplify their voices for local sovereignty, self-determination, and autonomy. 
- **Being unapologetically political** - People who have the privilege to be impartial are often those who are the least affected by existing systems of oppression. We engage in solidarity by centering the voices and experiences of those most affected by injustice. We strive to be accountable as  advocates and [accomplices](www.indigenousaction.org/accomplices-not-allies-abolishing-the-ally-industrial-complex/), not just allies. 
- [**Rights-Based**](https://www.unfpa.org/human-rights-based-approach) - Regardless of where people are located, what they have been through, and who they are, everyone deserves their human rights to be met. When universal rights are not met, accountability lies within systemic failure of institutions, not shortcomings of individuals. Co-creating equitable solutions requires understanding the systemic failures of institutions relative to [human rights](http://www.un.org/en/universal-declaration-human-rights/). Not forcing a solution and fostering paternalism.  
- **Love and Respect** - In the ways we treat our partners and each other, we strive to create spaces that amplify voices, create broad equity, and embody participatory democracy. Our humanity is bound in each other. Our liberation is mutual.


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
