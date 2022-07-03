variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group to deploy to"
}

variable "location" {
  type        = string
  description = "Location to deploy resources"
}
variable "image_template_name" {
  type        = string
  description = "Name of Image Template to deploy"
}

variable "user_assigned_identity_name" {
  type        = string
  description = "Name of user assigned identity for image builder"
}

variable "gallery_name" {
  type        = string
  description = "Name of Shared Image Gallery"
}

variable "gallery_image_name" {
  type        = string
  description = "Name of Shared Image Gallery Image"
}

variable "artifact_tags" {
  type        = map(string)
  description = "Image artifact tags"
}

variable "replication_regions" {
  type        = list(string)
  description = "Image replication regions"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
}
