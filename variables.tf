variable "image_name" {
  type    = string
  default = "nginx:latest"
}

variable "container_name" {
  type    = list(any)
  default = [
    "nginx01",
    "nginx02",
    "nginx03"
  ]
}

variable "container_port" {
  type = list(any)
  default = [ 
    "8080",
    "8081",
    "8082"
   ]
}

variable "container_volume" {
  type    = list(any)
  default = [
    "vol1",
    "vol2",
    "vol3"
  ]
}