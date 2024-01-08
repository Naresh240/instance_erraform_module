variable ami_id {
  type        = string
  description = "ami id for instance"
}

variable instance_type {
    type        = string
    description = "instance type for ec2"
}

variable instance_count {
  type   = number
  default  = 2
}