resource "docker_image" "nginx" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  count = length(var.container_name)
  name  = var.container_name[count.index]
  ports {
    internal = "80"
    external = var.container_port[count.index]
  }

  volumes {
    container_path = "/var/lib/docker/volumes/"
    volume_name = var.container_volume[count.index]
  }
}
