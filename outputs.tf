output "feeds_id" {
  description = "Map of id values across all feeds, keyed the same as var.feeds except keys with no id are omitted"
  value       = { for k, v in azuredevops_feed.feeds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "feeds_features" {
  description = "Map of features values across all feeds, keyed the same as var.feeds except keys with no features are omitted"
  value       = { for k, v in azuredevops_feed.feeds : k => v.features if v.features != null && length(v.features) > 0 }
}
output "feeds_name" {
  description = "Map of name values across all feeds, keyed the same as var.feeds except keys with no name are omitted"
  value       = { for k, v in azuredevops_feed.feeds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "feeds_project_id" {
  description = "Map of project_id values across all feeds, keyed the same as var.feeds except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_feed.feeds : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

