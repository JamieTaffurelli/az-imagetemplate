output "image_template_resource_id" {
  value       = jsondecode(azurerm_resource_group_template_deployment.image.output_content).resourceID.value
  description = "Resource ID of the image template"
}
