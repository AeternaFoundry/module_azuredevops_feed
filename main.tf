resource "azuredevops_feed" "feeds" {
  for_each = var.feeds

  name       = each.value.name
  project_id = each.value.project_id

  dynamic "features" {
    for_each = each.value.features != null ? each.value.features : []
    content {
      permanent_delete = features.value.permanent_delete
      restore          = features.value.restore
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

