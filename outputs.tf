output "lightsail_lb_certificates_id" {
  description = "Map of id values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_lb_certificates_arn" {
  description = "Map of arn values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lightsail_lb_certificates_created_at" {
  description = "Map of created_at values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "lightsail_lb_certificates_domain_name" {
  description = "Map of domain_name values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "lightsail_lb_certificates_domain_validation_records" {
  description = "Map of domain_validation_records values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.domain_validation_records if v.domain_validation_records != null && length(v.domain_validation_records) > 0 }
}
output "lightsail_lb_certificates_lb_name" {
  description = "Map of lb_name values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.lb_name if v.lb_name != null && length(v.lb_name) > 0 }
}
output "lightsail_lb_certificates_name" {
  description = "Map of name values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lightsail_lb_certificates_region" {
  description = "Map of region values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lightsail_lb_certificates_subject_alternative_names" {
  description = "Map of subject_alternative_names values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.subject_alternative_names if v.subject_alternative_names != null && length(v.subject_alternative_names) > 0 }
}
output "lightsail_lb_certificates_support_code" {
  description = "Map of support_code values across all lightsail_lb_certificates, keyed the same as var.lightsail_lb_certificates"
  value       = { for k, v in aws_lightsail_lb_certificate.lightsail_lb_certificates : k => v.support_code if v.support_code != null && length(v.support_code) > 0 }
}

