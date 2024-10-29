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
years: [2024,2023,2022,2021,2020,2019,2018,2017,2016]
# nav: true
---
<br/>

<!-- <img align="right" width="200px" src="assets/img/headshot.JPG"  style="border-radius: 50%;"> -->
<img align="right" width="200px" src="assets/img/jackson-snap-office.jpg" style="border-radius: 50%; border: 20px solid transparent; border-image: linear-gradient(to right, transparent, #ffffff, transparent); border-image-slice: 1;">

# Bio

Hi! I am a Research Scientist at [Snap Research](https://research.snap.com/team/creative-vision.html) in Palo Alto, where I work on generative models. My team and I are looking for [interns](https://snap-research.github.io/cv-call-for-interns-2025/). Feel free to reach out to me directly as well!


Before joining Snap, I was a postdoc at Stanford CS and the Wu Tsai Human Performance Alliance where I worked closely with professors Serena Yeung, C. Karen Liu, and Scott Delp.
I did my Ph.D. at the University of Toronto advised by professor Rich Zemel.


<!-- Hi! I am a PostDoc at [Stanford CS](https://cs.stanford.edu/) and the [Wu Tsai Human Performance Alliance](https://humanperformancealliance.org/). I work closely with Prof. [Serena Yeung](https://ai.stanford.edu/~syyeung/), Prof. [Karen Liu](https://tml.stanford.edu/), Prof. [Scott Delp](https://nmbl.stanford.edu/) and members in their groups.


Previously, I obtained my Ph.D. from the University of Toronto (UofT) and [Vector Institute](https://vectorinstitute.ai/) and was advised by Prof. [Rich Zemel](http://www.cs.toronto.edu/~zemel/inquiry/home.php). I obtained my undergraduate degree from Engineering Science at UofT. I was born and raised in Taipei, [Taiwan](https://www.youtube.com/watch?v=FYpyquAvYLM).

Here is my [CV/Resume](assets/pdf/Kuan_Chieh_Wang_resume-202308.pdf). -->

<br/>

<!-- # Research Interest
My research centers around deep learning, probabilistic generative models, computer vision, and digital human models.
Clear gaps exist between current AI models and human capabilities, including a 3D understanding of the world and the ability to quickly adapt to new tasks.  Driven by these gaps, my recent focus is on <span class="font-weight-bold">*3D computer vision*</span> and <span class="font-weight-bold">*open-world learning*</span>.

OLD
Along with my colleagues , we think about how to use AI and neural networks to optimize athletic performance 🏋🏻‍♂️.  More specifically, my current projects revolve around <span class="font-weight-bold">3D human motion reconstruction from casually captured videos</span>.

If you are interested in similar topics, reach out!

<br/> -->




# Publications
<div class="publications">

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>

# Preprints
<div class="publications">
  {% bibliography -f preprints %}
</div>

<br/>

<br/>

# Professional Experience
I was
* an intern at Google Brain (MTV, TOR) in 2018 hosted by [Chung-Cheng Chiu](https://scholar.google.com/citations?user=ixhmT3AAAAAJ&hl=en). We worked on speech recognition together.
* a research student working with the Toronto Raptors' analysts Keith Boyarsky and Eric Khoury. My mom likes to believe that the Toronto Raptors getting better, and eventually winning the Championship in 2019 had something to do with my research. 🤔
* a ML consultant at SmartFinance LLC, a start-up Rich co-founded. We had some fun trying to make finance easier with ML.
