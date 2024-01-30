terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {} // because it is external

resource "docker_image" "nignx" {
    name = "nginx:latest"
    keep_locally = false
}

resource "docker_container" "nginx" {
    image = docker_image.nginx.latest
    name = "nginx-tf" 
    ports {
        internal = 80
        external = 80
    }
}
