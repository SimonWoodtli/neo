# Latest Neo Binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/neo)](https://artifacthub.io/packages/search?repo=neo)

This image contains the current neo-matrix binary.

## Installation

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/neo:latest /bin/neo /where/You/Want
```

### Local install

1. Build image: 

```
docker build -t alpine-neo -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/neo:latest /bin/neo /bin/neo
EOF
```

2. Copy neo to your host: 

```
docker run --rm -v $HOME/.local/bin:/mnt alpine-neo sh -c "install /bin/neo /mnt"
```

Related:

* https://github.com/st3w/neo
