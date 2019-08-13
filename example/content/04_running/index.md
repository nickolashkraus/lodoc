---
title: Running
url: /running
weight: 4
---

Lodoc is run using a Docker image. Simply mount your `content` directory, publish port 1313, and navigate to [localhost:1313](https://localhost:1313).


```bash
docker run \
  -p 1313:1313 \
  -v $(pwd)/example/content:/lodoc/content: \
  nickolashkraus/lodoc:latest
```
