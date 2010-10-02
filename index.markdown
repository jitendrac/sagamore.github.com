---
layout: default
title: Slingshot Developer Blog
---

{% for post in site.posts limit:5 %}
<li>
  <a href="{{ post.url }}">{{ post.title }}</a>
  <div class="posted_date">Posted on {{ post.date | date_to_long_string }}.</div>
  <a href="{{ post.url }}#disqus_thread">comments</a>
</li>
{% endfor %}