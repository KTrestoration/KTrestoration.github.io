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

Welcome to the Lost KidsTube Users datatable.
This page will be updated as we depart from the
old Google Sheets spreadsheet in favor of faster
search functions, working column sorts, and a
dedicated website.

The spreadsheet is maintained by J.P.#6511 on
Discord. Please contact me there if you have
any comments or inquiries.

The latest release version 3.0 means that these
users were scraped from profile comments sections,
since they did not have their own profile page
scraped by the WayBack Machine.
<br/>
<table class="display">
  <colgroup>
  <col width="32%" />
  <col width="26%" />
  <col width="27%" />
  <col width="5%" />
  <col width="10%" />
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


