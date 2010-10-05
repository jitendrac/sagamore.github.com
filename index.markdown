---
layout: default
---

{% for post in site.posts limit:5 %}
<div class="post">
  {% include post_header.html %}
  {{ post.content }}
  <a href="{{ post.url }}">Permalink</a> | <a href="{{ post.url }}#disqus_thread">comments</a>
</div>
{% endfor %}

<a href="{{ site.root }}/archives">Archives</a>