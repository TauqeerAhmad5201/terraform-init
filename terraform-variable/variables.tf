variable "filename" {
    default = "/home/tauqeerops/terraform-course/terraform-variable/devops-automated.txt"
}

variable "content" {
    default = "This a autogenerate from a variable"
}

variable "content_map" {
  type=map
  default = {
    "content1" = "this is a cool content 1"
    "content2" = "this is a cooler content 2"
  }
}

variable "file_list" {
  type = list
  default = ["/home/tauqeerops/terraform-course/terraform-variable/file1.txt","/home/tauqeerops/terraform-course/terraform-variable/file2.txt"]
}

variable "aws_ec2_object" {
  type = object({
    name = string
    instances = number
    keys = list(string)
    ami = string
  })
  default = {
    name = "test_ec2_instances"
    instances = 4
    keys = ["key1.pem", "key2.pem"]
    ami = "ubuntu-aef51"
  }
}

variable "no_of_students" {}