# Lodoc

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nickolashkraus/lodoc?color=blue)](https://cloud.docker.com/u/nickolashkraus/repository/docker/nickolashkraus/lodoc)
[![MicroBadger Layers](https://images.microbadger.com/badges/image/nickolashkraus/lodoc.svg)](https://microbadger.com/images/nickolashkraus/lodoc)
[![MicroBadger Version](https://images.microbadger.com/badges/version/nickolashkraus/lodoc.svg)](https://microbadger.com/images/nickolashkraus/lodoc)
[![Releases](https://img.shields.io/github/v/release/NickolasHKraus/lodoc?color=blue)](https://github.com/NickolasHKraus/lodoc/releases)
[![MIT License](https://img.shields.io/github/license/NickolasHKraus/lodoc?color=blue)](https://github.com/NickolasHKraus/lodoc/blob/master/LICENSE)

[Docker Hub](https://cloud.docker.com/u/nickolashkraus/repository/docker/nickolashkraus/lodoc)

Lodoc (lō-däk) provides an easy and convenient way of viewing documentation locally.

## Getting Started

To get started with Lodoc, simply pull the Docker image:

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

Lodoc is run using a Docker image. Simply mount your `content` directory, publish port 1313, and navigate to [localhost:1313](https://localhost:1313).

```bash
docker run \
  -p 1313:1313 \
  -v $(pwd)/example/content:/lodoc/content: \
  nickolashkraus/lodoc:latest
```
