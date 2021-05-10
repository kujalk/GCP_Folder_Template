variable "root-folder-id" {
  type        = string
  description = "Root Folder ID"
}

variable "topfolder" {
  type        = string
  description = "Top Folder name"
}

variable "product1" {
  type        = string
  description = "Product-1 Name"
}

variable "product2" {
  type        = string
  description = "Product-2 Name"
}

variable "top-folders" {
  type        = list(string)
  description = "Top level folders"
  default     = ["High", "Medium", "Low"]
}