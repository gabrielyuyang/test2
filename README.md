# infrastructure

### Brief Introduction

This repository houses the scripts for community infrastructure. You are welcome to join us, and any contribution will be appreciated.

### Structure
```
|__environment --house the scripts of basic infrastructure. 
|__mail        --house the scripts of mail list system.
|__website     --house the scripts of CD system.
|__docs        --house the design docs.
|__assets      --house the basic assets, e.g. images.
|__repository  --house the repository maintenance yaml.
|__meetbot     --house the meetbot dockerfile and deployment yaml
```


Currently, all systems are running in HuaweiCloud CCE engine as container, and we appreciate anyone who is willing to contribute your infrastructure resource into our community. thanks.

### Mail

Our mail list system is based on (Mailman + Exim4 + Postgres), thanks to [maxking](https://github.com/maxking/docker-mailman)
and [inifum](https://github.com/infinum/exim4-docker), our most of the docker files are built on their version.

### License

Now all codes are under apache v2.0 license.

### Reference
