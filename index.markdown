---
layout: default
title: Slingshot Developer Blog
---

{% for post in site.posts limit:5 %}
<div class="post">
  <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
  <div class="posted_date">Posted on {{ post.date | date_to_long_string }}.</div>
  {{ post.content }}
  <a href="{{ post.url }}#disqus_thread">comments</a>
</div>
{% endfor %}

<a href="{{ site.root }}/archives">Older Posts</a>