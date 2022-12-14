output "container_port" {
    value = [
        "first instance http://127.0.0.1:${docker_container.nginx[0].ports[0].external}",
        "second instance http://127.0.0.1:${docker_container.nginx[1].ports[0].external}",
        "third instance http://127.0.0.1:${docker_container.nginx[2].ports[0].external}",
    ] 
}