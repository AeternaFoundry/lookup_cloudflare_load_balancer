variable "load_balancer_lookup" {
  description = <<EOT
Map of load_balancer_lookup, attributes below
Required:
    - load_balancer_id
Optional:
    - pop_pools
    - region_pools
    - zone_id
EOT

  type = map(object({
    load_balancer_id = string
    pop_pools        = optional(map(any))
    region_pools     = optional(map(any))
    zone_id          = optional(string)
  }))
}

