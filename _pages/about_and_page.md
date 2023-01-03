---
layout: about_and_page
title: About
permalink: /

profile:
  align: right
  image: headshot.JPG
  address: #

news: false
social: true
# from publications
years: [2023,2022,2021,2020,2019,2018,2017,2016]
# nav: true
---
<br/>
<img align="right" width="200px" src="assets/img/headshot.JPG">
# Bio
Hi! I am a PostDoc at [Stanford CS](https://cs.stanford.edu/) and the [Wu Tsai Human Performance Alliance](https://humanperformancealliance.org/). I work closely with Prof. [Serena Yeung](https://ai.stanford.edu/~syyeung/), Prof. [Karen Liu](https://tml.stanford.edu/), Prof. [Scott Delp](https://nmbl.stanford.edu/) and members in their groups. 


Previously, I obtained my Ph.D. in Machine Learning at the University of Toronto, and [Vector Institute](https://vectorinstitute.ai/) advised by Prof. [Rich Zemel](http://www.cs.toronto.edu/~zemel/inquiry/home.php). I obtained my undergraduate degree from Engineering Science at UofT. I was born and raised in Taipei, [Taiwan](https://www.youtube.com/watch?v=FYpyquAvYLM).

<!-- [CV/Resume](assets/pdf/resume.pdf) not up-to-date. -->

<br/>
# Research Interest
Along with my colleagues , we think about how to use AI and neural networks to optimize athletic performance 🏋🏻‍♂️.  More specifically, my current projects revolve around **3D human motion reconstruction from casually captured videos**.

If you are interested in similar topics, please reach out! 

<br/>
# Publications
<div class="publications">

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div> 

<br/>
# Professional Experience
I was
* an intern at Google Brain (MTV, TOR) in 2018 hosted by [Chung-Cheng Chiu](https://ai.google/research/people/ChungChengChiu). We worked on speech recognition together.
* a research student working with the Toronto Raptors' analysts Keith Boyarsky and Eric Khoury. My mom likes to believe that the Toronto Raptors getting better, and eventually winning the Championship in 2019 had something to do with my research. 🤔
* a ML consultant at SmartFinance LLC, a start-up Rich co-founded. We had some fun trying to make finance easier with ML. 




