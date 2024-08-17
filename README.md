[![Docker Repository on Quay](https://quay.io/repository/jometzner/wget/status "Docker Repository on Quay")](https://quay.io/repository/jometzner/wget)

# Purpose

Executes wget in a timeboxed fashion. That means it uses `timeout` to run `wget` with a time limit of x seconds.

# Build arguments
`timeout` - determines the default time limit to be used if no environment `SECS` is passed at container runtime.

# Build instructions

```zsh
git clone git@github.com:jometzner/wget.git
docker build wget -t test:local
```

# Usage example
```zsh
❯ docker run --rm 31099/wget:alpine-3.20 --version
Start wget to fetch for 3600 seconds
GNU Wget 1.21.3 built on linux-musl.
```
Run docker image `wget` tag `alpine-3.20` from my docker hub account to print version information. The value of time limit of 3600 seconds is the image default that you can override via `--env SECS=10`
```zsh
❯ docker run --env SECS=10 --rm 31099/wget:alpine-3.20 --version
Start wget to fetch for 10 seconds
GNU Wget 1.21.3 built on linux-musl.
```
