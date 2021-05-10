resource "google_folder" "level1" {
  display_name = var.topfolder
  parent       = "folders/${var.root-folder-id}"
}

resource "google_folder" "Top-Folders" {
  count        = length(var.top-folders)
  display_name = var.top-folders[count.index]
  parent       = google_folder.level1.name
}

module "Sub-Low" {
  count    = length(var.top-folders)
  source   = "./sub-folders"
  parent   = google_folder.Top-Folders[count.index].name
  product1 = var.product1
  product2 = var.product2
}