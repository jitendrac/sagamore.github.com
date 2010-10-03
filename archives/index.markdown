---
layout: default
title: Archives
---

<h2>Archives</h2>

{% for post in site.posts %}
<ul>
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <span class="posted_date">{{ post.date | date_to_long_string }}</span>
  </li>
</ul>
{% endfor %}