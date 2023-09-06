---
title: "Learn-Software.com"
description: Build fast, responsive sites with Hugo Bootstrap Framework
date: 2023-09-06
draft: false
layout: landing
header:
  banner:
    alignment: center
    img: /images/banners/home.svg
    title: |
      HB Framework
      { .text-uppercase .mb-5 data-aos="fade-up" }
    description: |
      Build **fast**, **modern**, **responsive** and **modular** static sites with Hugo and Bootstrap
      { .mb-5 data-aos="fade-up" data-aos-delay="200" }

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link style=primary size=lg class="py-3" url="/docs" >}}
          {{< icons/icon vendor=bootstrap name=book className="me-1" >}} Read the docs
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=light size=lg class="py-3" url="/modules" >}}
          {{< icons/icon vendor=bootstrap name=boxes className="me-1" >}} Modules
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=danger size=lg class="py-3" url="/thanks" >}}
          {{< icons/icon vendor=bootstrap name=heart className="me-1" >}} Thanks
        {{< /bs/btn-link >}}
      {{< /html/div >}}
# menu:
#   main:
#     name: Home
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

## Latest Articles {.text-center .mb-5}

{{< bs/article-cards >}}
