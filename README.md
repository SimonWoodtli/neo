# Latest Neo Binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/neo)](https://artifacthub.io/packages/search?repo=neo)

This image contains the current neo-matrix binary.

## Installation

> ⚠ Checkout the required dependencies on maintainers repo [here] and install them.

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/neo:latest /bin/neo /where/You/Want
```

### Local install

1. Build image:

```
podman build -t alpine-neo -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/neo:latest /bin/neo /bin/neo
EOF
```

2. Run container in detached mode:

```
podman run -dt localhost/alpine-neo
```

3. Get Container ID:

```
podman ps
```

4. Copy neo to your host: 

```
podman cp <containerId>:/bin/neo /where/You/Want
```

Related:

* https://github.com/st3w/neo

[here]: <https://github.com/st3w/neo>
