resource "azurerm_shared_image_gallery" "images" {
  name                = var.image_gallery_name
  resource_group_name = azurerm_resource_group.images.name
  location            = azurerm_resource_group.images.location
  description         = var.image_gallery_description
  tags                = var.tags
}

resource "azurerm_shared_image" "images" {
  name                = var.image_name
  gallery_name        = azurerm_shared_image_gallery.images.name
  resource_group_name = azurerm_resource_group.images.name
  location            = azurerm_resource_group.images.location
  os_type             = var.os_type
  description         = var.image_description
  specialized         = false

  identifier {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
  }
  tags = var.tags
}

resource "azurerm_user_assigned_identity" "images" {
  name                = var.identity_name
  resource_group_name = azurerm_resource_group.images.name
  location            = azurerm_resource_group.images.location
  tags                = var.tags
}