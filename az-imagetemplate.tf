data "azurerm_user_assigned_identity" "images" {
  name                = var.user_assigned_identity_name
  resource_group_name = var.resource_group_name
}

data "azurerm_shared_image" "images" {
  name                = var.gallery_image_name
  gallery_name        = var.gallery_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_resource_group_template_deployment" "images" {
  name                = var.image_template_name
  resource_group_name = var.resource_group_name
  template_content    = file("arm/windowsImageTemplate.json")
  parameters_content = jsonencode({
    "imageTemplateName" = {
      value = var.image_template_name
    },
    "location" = {
      value = var.location
    },
    "userAssignedIdentityId" = {
      value = data.azurerm_user_assigned_identity.images.id
    },
    "galleryImageId" = {
      value = data.azurerm_shared_image.images.id
    },
    "sourceImagePublisher" = {
      value = data.azurerm_shared_image.images.identifier[0].publisher
    },
    "sourceImageOffer" = {
      value = data.azurerm_shared_image.images.identifier[0].offer
    },
    "sourceImageSku" = {
      value = data.azurerm_shared_image.images.identifier[0].sku
    },
    "artifactTags" = {
      value = var.artifact_tags
    },
    "replicationRegions" = {
      value = var.replication_regions
    }
    "tags" = {
      value = var.tags
    }
  })
  deployment_mode = "Incremental"
}
