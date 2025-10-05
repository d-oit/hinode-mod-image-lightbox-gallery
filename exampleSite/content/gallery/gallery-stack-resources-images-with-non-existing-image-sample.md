---
title: "Gallery Stack Resources with non existing image and cssClass Sample"
thumbnail:
    url: /img/bird.jpg
resources:
  - src: "img/bird.jpg"
    title: "Example caption 1"
    params:
      description: "Description for bird image"
      cssClass: "w-50"
  - src: "img/city.jpg"
    title: "Example caption 2"
    params:
      description: "Description for city image1
      new
      Line
      showing"
      cssClass: "w-75"
---

## Gallery Stack image resource Sample

{{< gallery useRandomImageStack=false >}}

Show Hugo Server warning output for non existing images
