module "create-secrets" {
  for_each = var.secrets
  source   = "./create-secrets"
  kv_path  = each.key
  secrets  = each.value
}

variable "secrets" {
  default = {
    infra = {
      ssh = {
        admin_username = "roboshop-ansible"
        admin_password = "Devops@123456"
      }
    }
    roboshop-dev = {
      frontend = {
        catalogue_endpoint = "http://catalogue-dev.azdevopsb82.online:8080"
        cart_endpoint      = "http://cart-dev.azdevopsb82.online:8080"
        user_endpoint      = "http://user-dev.azdevopsb82.online:8080"
        payment_endpoint   = "http://payment-dev.azdevopsb82.online:8080"
        shipping_endpoint  = "http://shipping-dev.azdevopsb82.online:8080"

      }
    }
  }
}