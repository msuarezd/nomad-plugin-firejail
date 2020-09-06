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

## Configuration
You can configure the path to the firejail binary:
```
plugin "firejail" {
  config {
    firejail_path = "path/to/firejail"
  }
}
```
If not configured, nomad will look for it in the standard path.

## Task configuration
```
  group "example" {
    task "dummy" {
      driver = "firejail"

      config {
        options = ["-firejail", "-commandline", "-options"]
        command = "/bin/command"
        args    = ["-option1", "option2"]
      }
    }
  }
```
As firejail supports profiles, it is recommendable you write a profile for your applications and download it as artifact:
```
    artifact {
        source      = "https://example.com/your_app_profile"
        destination = "local/firejail.profile"
        mode        = "file" 
    }

```
Then you can specify it using options:
```
options = ["--profile", "local/firejail.profile"]
```


## Motivation
Firejail allows to isolate the running environment of your jobs using all usual linux kernel features (namespaces, seccomp-bpf, capabilities) without having to use a (docker) container. It is lightweight and can work wit SELinux or Apparmor. This allows you to do the same as the raw_exec or exec driver (without the chroot overhead) and with flexibility in the way you want to secure the running environment of your task. 

For more information on firejail see the firejail documentation. Firejail is included in all major linux distributions.

### Other firejail-like tools:
- [nsjail](https://github.com/google/nsjail)
- [bubblewrap](https://github.com/containers/bubblewrap)

