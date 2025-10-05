# Hinode Module - Lightbox Gallery

<!-- Tagline -->
<p align="center">
    <b>A lightbox image function and gallery shortcode for Hugo compatible with Hinode</b>
    <br />
</p>

<!-- Badges -->
<p align="center">
    <a href="https://gohugo.io" alt="Hugo website">
        <img src="https://img.shields.io/badge/generator-hugo-brightgreen">
    </a>
    <a href="https://gethinode.com" alt="Hinode theme">
        <img src="https://img.shields.io/badge/theme-hinode-blue">
    </a>
    <a href="https://github.com/d-oit/hinode-mod-image-lightbox-gallery/commits/main" alt="Last commit">
        <img src="https://img.shields.io/github/last-commit/gethinode/mod-template.svg">
    </a>
    <a href="https://github.com/d-oit/hinode-mod-image-lightbox-gallery/issues" alt="Issues">
        <img src="https://img.shields.io/github/issues/gethinode/mod-template.svg">
    </a>
    <a href="https://github.com/d-oit/hinode-mod-image-lightbox-gallery/pulls" alt="Pulls">
        <img src="https://img.shields.io/github/issues-pr-raw/gethinode/mod-template.svg">
    </a>
    <a href="https://github.com/d-oit/hinode-mod-image-lightbox-gallery/blob/main/LICENSE" alt="License">
        <img src="https://img.shields.io/github/license/d-oit/hinode-mod-image-lightbox-gallery">
    </a>
</p>

## About

![Logo](https://raw.githubusercontent.com/gethinode/hinode/main/static/img/logo.png)

Hinode is a clean blog theme for [Hugo][hugo], an open-source static site generator. Hinode is available as a [template][repository_template], and a [main theme][repository]. <!-- This repository maintains a Hugo module to add [module][module] to a Hinode site. --> Visit the Hinode documentation site for [installation instructions][hinode_docs].

## Contributing

This module uses [semantic-release][semantic-release] to automate the release of new versions. The package uses `husky` and `commitlint` to ensure commit messages adhere to the [Conventional Commits][conventionalcommits] specification. You can run `npx git-cz` from the terminal to help prepare the commit message.

## Configuration

This module supports the following parameters (see the section `params.modules` in `config.toml`):

## gallery markdown shortcode

```markdown
{{< gallery >}}
```

### Parameters

- `imagePath`: The path to the images. Default is "submit". Define the files in the front matter .md file like this:

    ```yaml resources:
  - src: "img/bird.jpg"
    title: "Example caption 1"
    params:
      description: "Description for bird image
      new line test
      end of line
      "
    ```

- `useExifCaption`: Whether to use EXIF captions. Default is **false**.
- `useRandomImageStack`: Whether to randomize the image stack. Default is **false**.
- `imageCssClass`: CSS class for the images. Default is "lightbox size-medium".
- `ratio`: Aspect ratio of the images. Default is **auto**.
- `loading`: Loading attribute for the images. Default is **lazy**.
- `searchclass`: CSS class for the search input. Default is **md**.
- `showGalleryImageCaption`: Whether to show the gallery image caption. Default is **true**.
- `showSearch`: Whether to show the search input. Default is **false**.
- `galleryCssClass`: CSS class for the gallery. Default is **normal-gallery**.
- `caption`: Hinode image figure for the image. Default is an empty string. Define the lightbox caption in front matter.

## Customization Styles

You can customize the gallery by modifying the CSS styles in the `image-lightbox-gallery.scss` file located in the `assets/scss` directory.

<!-- MARKDOWN LINKS -->
[hugo]: https://gohugo.io
[hinode_docs]: https://gethinode.com
<!-- [module]: https://example.com -->
[repository]: https://github.com/gethinode/hinode.git
[repository_template]: https://github.com/gethinode/template.git
[conventionalcommits]: https://www.conventionalcommits.org
[husky]: https://typicode.github.io/husky/
[semantic-release]: https://semantic-release.gitbook.io/
