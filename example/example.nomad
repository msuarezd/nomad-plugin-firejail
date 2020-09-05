job "example" {
  datacenters = ["dc1"]
  type        = "service"

  group "example" {
    task "sleep" {
      driver = "firejail"

      config {
        options = ["-shell=none"]
        command = "/bin/sleep"
        args    = ["6000"]
      }
    }
  }
}
