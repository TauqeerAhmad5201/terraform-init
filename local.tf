resource "local_file" "devops" {
	filename = "/home/tauqeerops/terraform-course/terraform-local/devops_automated.txt"
	content = "I want to be a DevOps Engineer."
}

resource "random_string" "rand-str" {
	length = 16
	special = true
	override_special =  "!@#$%^&*()-+={}[]:;?"
}

output "rand-str" {
  value = random_string.rand-str[*].result
}
