module "kms" {
  source   = "./modules/kms"
  for_each = local.keys_to_create

  target_service = each.key
  alias_name     = try(each.value["alias_name"], "kms-${var.environment}-${lower(each.key)}")
}