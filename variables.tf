variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami filter" {
  description = "Type of EC2 instance to provision"

  type = object({
    name = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
}

variable "environment" {
    description = "Development environment"
  
    type = object ({
      name = string
      network_prefix = string
    })
 

    default = {(
      name = "dev"
      network_prefix = "10.0"
    )}
  }
  
  varibale "asg_min_size" {
    description = "minimum number of instance in asg"
    default = 1
  }

   varibale "asg_max_size" {
    description = "maximum number of instance in asg"
    default = 2
  }