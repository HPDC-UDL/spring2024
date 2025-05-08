# High-performance and Distributed Computing

## About

This repository contains the main website for the course **High-performance and Distributed Computing**.

This repository is a Jekyll theme for the course website. The theme was designed by:

* the template on [svmiller / course-website](https://github.com/svmiller/course-website).
* the repository [kazemnejad](https://github.com/kazemnejad/jekyll-course-website-template).

Based on the original theme, this repository has been modified to suit the needs of the course.

## Local deploy

### Automatic deploy

There is a docker image and a makefile to build the website and test it locally.

```bash
make build && make run
```

### Manual deploy

To set up your environment to develop this theme, run `bundle install`.
To experiment with this code, add some sample content and run `bundle exec Jekyll serve` – this directory is set up just like a Jekyll site!

## License

The original repository is licensed under the [MIT License], which is a permissive free software license. The original license is included in the repository as `LICENSE`. Thus, you can use this theme for your own projects, but you must include the original license in your project.
