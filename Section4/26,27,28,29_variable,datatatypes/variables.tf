variable "instance_type" {
  default = "t2.micro"
  type = string
}
variable "list" {
  type = list
  default = ["a", "b", "c"]
}

variable "map" {
  type = map
  default = {
    a = "first",
    b = "second"
    c = "third"
  }
}