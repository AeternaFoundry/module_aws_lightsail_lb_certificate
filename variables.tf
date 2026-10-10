variable "lightsail_lb_certificates" {
  description = <<EOT
Map of lightsail_lb_certificates, attributes below
Required:
    - lb_name
    - name
Optional:
    - domain_name
    - region
    - subject_alternative_names
EOT

  type = map(object({
    lb_name                   = string
    name                      = string
    domain_name               = optional(string)
    region                    = optional(string)
    subject_alternative_names = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_lb_certificates : (
        (length(v.lb_name) >= 2 && length(v.lb_name) <= 255) && (can(regex("^[A-Za-z]", v.lb_name))) && (can(regex("^[0-9A-Za-z_.-]+[^_.-]$", v.lb_name)))
      )
    ])
    error_message = "all of: must be between 2 and 255 characters; must begin with an alphabetic character; must contain only alphanumeric characters, underscores, hyphens, and dots"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

