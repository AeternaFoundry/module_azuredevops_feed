output "feeds_id" {
  description = "Map of id values across all feeds, keyed the same as var.feeds"
  value       = { for k, v in azuredevops_feed.feeds : k => v.id }
}
output "feeds_features" {
  description = "Map of features values across all feeds, keyed the same as var.feeds"
  value       = { for k, v in azuredevops_feed.feeds : k => v.features }
}
output "feeds_name" {
  description = "Map of name values across all feeds, keyed the same as var.feeds"
  value       = { for k, v in azuredevops_feed.feeds : k => v.name }
}
output "feeds_project_id" {
  description = "Map of project_id values across all feeds, keyed the same as var.feeds"
  value       = { for k, v in azuredevops_feed.feeds : k => v.project_id }
}

