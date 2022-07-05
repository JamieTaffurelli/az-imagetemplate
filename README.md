# Azure Image Builder template module

This repo contains a [Terraform](https://www.terraform.io/) module that defines an Image Builder template linked to a Shared Image Gallery.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group_template_deployment.image](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group_template_deployment) | resource |
| [azurerm_shared_image.image](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/shared_image) | data source |
| [azurerm_user_assigned_identity.image](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/user_assigned_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_artifact_tags"></a> [artifact\_tags](#input\_artifact\_tags) | Image artifact tags | `map(string)` | n/a | yes |
| <a name="input_gallery_image_name"></a> [gallery\_image\_name](#input\_gallery\_image\_name) | Name of Shared Image Gallery Image | `string` | n/a | yes |
| <a name="input_gallery_name"></a> [gallery\_name](#input\_gallery\_name) | Name of Shared Image Gallery | `string` | n/a | yes |
| <a name="input_image_template_name"></a> [image\_template\_name](#input\_image\_template\_name) | Name of Image Template to deploy | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location to deploy resources | `string` | n/a | yes |
| <a name="input_replication_regions"></a> [replication\_regions](#input\_replication\_regions) | Image replication regions | `list(string)` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the Resource Group to deploy to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources | `map(string)` | n/a | yes |
| <a name="input_user_assigned_identity_name"></a> [user\_assigned\_identity\_name](#input\_user\_assigned\_identity\_name) | Name of user assigned identity for image builder | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_image_template_resource_id"></a> [image\_template\_resource\_id](#output\_image\_template\_resource\_id) | Resource ID of the image template |
<!-- END_TF_DOCS -->
