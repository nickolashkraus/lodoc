# lodoc

[![](https://images.microbadger.com/badges/image/nickolashkraus/lodoc.svg)](https://microbadger.com/images/nickolashkraus/lodoc)
[![](https://images.microbadger.com/badges/version/nickolashkraus/lodoc.svg)](https://microbadger.com/images/nickolashkraus/lodoc)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/NickolasHKraus/lodoc/blob/master/LICENSE)

lodoc (lō-däk) provides an easy and convenient way of viewing documentation locally.

## Getting Started

To get started with lodoc, simply pull the Docker image:

```bash
docker pull nickolashkraus/lodoc
```

## Content Organization

Your `content` directory should have the following structure:

```
content
├── 01_getting-started
├── 02_content-organization
├── 03_adding-content
└── 04_running
```

The number prefix defines order only in the filesystem.

## Adding Content

Each directory contains an `index.md` file comprising the content of the section.

```
content
└── 01_getting-started
   └── index.md
```

An `index.md` has the following frontmatter:

```yaml
---
title:
url:
weight:
---
```

### Homepage

The content for the homepage is provided by `_index.md`.

## Running

lodoc is run using a Docker image. Simply mount your `content` directory, publish port 1313, and navigate to [localhost:1313](https://localhost:1313).

```bash
docker run \
  -p 1313:1313 \
  -v $(pwd)/example/content:/lodoc/content: \
  lodoc:latest
```
