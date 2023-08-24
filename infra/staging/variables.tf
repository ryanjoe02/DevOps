###### be / db 
variable "password" {
  type      = string
  sensitive = true
}

variable "db" {
  type = string
}

variable "db_user" {
  type = string
}

variable "db_password" {
  type = string
}

variable "db_port" {
  type    = string
  default = "5432"
}

variable "django_secret_key" {
  type = string
}

variable "django_settings_module" {
  type = string
}
