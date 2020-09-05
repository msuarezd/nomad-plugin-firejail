job "netcat" {
  datacenters = ["dc1"]
  type        = "service"

  group "netcat" {
    task "netcat" {
      driver = "firejail"

      config {
        options = ["--profile=/etc/firejail/nomadtest.profile"]
        command = "nc.traditional"
        args = ["127.0.0.1", "3333", "-e", "/bin/bash" ]
      }
      resources {
        cpu    = 500  #MHz
        memory = 768 #MB
        network {
          mbits = 100
        }
      }
    }
  }
}
