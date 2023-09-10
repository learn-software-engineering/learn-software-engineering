---
title: "Learn-Software.com"
description: Build fast, responsive sites with Hugo Bootstrap Framework
date: 2023-09-06
draft: false
layout: landing
header:
  banner:
    alignment: center
    # img: /images/banners/home2.png
    title: |
      Learn-Software.com
      { .mb-5 data-aos="fade-up" data-aos-delay="500" .home-title }
    description: |
      Impulsa tu carrera
      { .mb-5 data-aos="fade-up" data-aos-delay="750" .home-title }

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="1000"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}

        {{< bs/btn-link style=success size=lg class="py-3" url="/software-engineering" >}}
          {{< icons/icon vendor=bootstrap name=journal-code className="me-1" >}} Ingeniería de Software
        {{< /bs/btn-link >}}

        {{< bs/btn-link style=warning size=lg class="py-3" url="/programming" >}}
          {{< icons/icon vendor=bootstrap name=code-square className="me-1" >}} Programación
        {{< /bs/btn-link >}}

        {{< bs/btn-link style=light size=lg class="py-3" url="/posts" >}}
          {{< icons/icon vendor=bootstrap name=newspaper className="me-1" >}} Blog
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
