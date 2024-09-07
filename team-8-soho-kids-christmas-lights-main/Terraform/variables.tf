variable "flavor" { default = "m1.large" }
variable "image" { default = "Debian 12 Bookworm" }

variable "name" { default = "gitServer" }

variable "network" { default = "xiaoming" }   # you need to change this

variable "keypair" { default = "cmt654coursework" } # you need to change this
variable "pool" { default = "cscloud_private_floating" }
variable "server_script" { default = "./server.sh" }
variable "security_description" { default = "Terraform security group2" }
variable "security_name" { default = "gittf_security2" }
