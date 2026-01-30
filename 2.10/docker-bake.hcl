group "default" {
  targets = ["latest"]
}

target "latest" {
  context    = "."
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64", "linux/arm64/v8", "linux/riscv64"]
  tags = [
    "docker.io/nethost/caddy:2.10",
    "ghcr.io/nethost/caddy:2.10",
  ]
  push = true
}