---
title: Users
sidebar: home_sidebar
hide_sidebar: true
keywords: users
permalink: users.html
toc: true
folder: users
datatable: true
---


<table class="display">
  <colgroup>
  <col width="30%" />
  <col width="30%" />
  <col width="40%" />
  </colgroup>
  {% for row in site.data.users %}
    {% if forloop.first %}
    <thead>
    <tr class="header">
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    </thead>
    {% endif %}
    {% tablerow pair in row %}
      {{ pair[1] }}
    {% endtablerow %}
    
  {% endfor %}

</table>


