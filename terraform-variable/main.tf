resource "local_file" "devops" {
  filename = var.file_list[0]
  content = var.content_map["content1"]
}

resource "local_file" "devops-var" {
  filename = var.filename
  content = var.content_map["content2"]
}  //var is helping us to get the data from variabes.tf, it is being managed by terraform.tfstate

output "aws_ec2_info" {
  value = var.aws_ec2_object.instances
}

output "tf_batch_students" {
  value = var.no_of_students
}