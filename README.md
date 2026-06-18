# Yury Zhelezko — Resume

Source for my online resume, published with GitHub Pages.

- **Live:** https://yzhelezko.github.io/cv/
- **PDF:** [YuryZhelezko_CV.pdf](assets/pdf/YuryZhelezko_CV.pdf)

Built on the Jekyll template [tarrex/online-resume](https://github.com/tarrex/online-resume).

## Editing

| File | Purpose |
|------|---------|
| `_data/data.yml` | All resume content (experience, skills, education, etc.) |
| `assets/images/profile.jpg` | Profile photo |
| `assets/pdf/` | PDF version of the resume |
| `_config.yml` | Site settings |
| `index.html` | Section display order |
| `_sass/_base.scss` | Styles |

## Run locally

Requires Ruby + Bundler/Jekyll.

```sh
gem install jekyll
jekyll serve
```

Open http://localhost:4000/cv/ in a browser.

## Deploy

Push to `main`. GitHub Actions (`.github/workflows/jekyll.yml`) builds the site and GitHub Pages serves it.

## License

[MIT](https://choosealicense.com/licenses/mit/)
