module github.com/msuarezd/nomad-plugin-firejail

go 1.15

require (
	github.com/LK4D4/joincontext v0.0.0-20171026170139-1724345da6d5 // indirect
	github.com/Sirupsen/logrus v0.0.0-00010101000000-000000000000 // indirect
	github.com/containernetworking/plugins v0.8.7 // indirect
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/gorhill/cronexpr v0.0.0-20180427100037-88b0669f7d75 // indirect
	github.com/hashicorp/consul-template v0.25.1
	github.com/hashicorp/go-hclog v0.14.1
	github.com/hashicorp/go-plugin v1.0.2-0.20191004171845-809113480b55
	github.com/hashicorp/nomad v0.12.3
	github.com/mitchellh/go-ps v1.0.0 // indirect
	github.com/stretchr/testify v1.5.1
	github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635 // indirect
	github.com/ugorji/go v0.0.0-00010101000000-000000000000 // indirect
	github.com/zclconf/go-cty v1.6.1 // indirect
	gopkg.in/fsnotify.v1 v1.4.7 // indirect
	gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 // indirect
)

replace github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.4.2

replace github.com/ugorji/go => github.com/hashicorp/go-msgpack v0.0.0-20190927123313-23165f7bc3c2

replace github.com/shirou/gopsutil => github.com/hashicorp/gopsutil v2.17.13-0.20190117153606-62d5761ddb7d+incompatible

replace github.com/hashicorp/go-msgpack => github.com/hashicorp/go-msgpack v0.0.0-20191101193846-96ddbed8d05b

replace github.com/godbus/dbus => github.com/godbus/dbus v5.0.1+incompatible
