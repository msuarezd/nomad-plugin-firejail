Nomad Firejail Driver Plugin
==========
[Hashicorp Nomad](https://www.nomadproject.io/) driver plugin using
[firejail](https://github.com/netblue30/firejail) to execute tasks.

## Requirements

- [Nomad](https://www.nomadproject.io/downloads.html) v0.9+
- [Go](https://golang.org/doc/install) v1.11+ (to build the provider plugin)
- firejail

## Building The Driver

Clone repository 

```sh
git clone git@github.com:msuarezd/nomad-plugin-firejail.git
```

Enter the repository directory and run make

```sh
cd nomad-plugin-firejail
make
```