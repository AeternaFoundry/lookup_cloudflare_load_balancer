data "cloudflare_load_balancer" "load_balancer_lookup" {
  for_each = var.load_balancer_lookup

  load_balancer_id = each.value.load_balancer_id
  pop_pools        = each.value.pop_pools
  region_pools     = each.value.region_pools
  zone_id          = each.value.zone_id
}

