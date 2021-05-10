resource "google_folder" "Production" {
  display_name = "Prod"
  parent       = var.parent
}

resource "google_folder" "Non-Production" {
  display_name = "Dev"
  parent       = var.parent
}

resource "google_folder" "product1" {
  display_name = var.product1
  parent       = google_folder.Production.name
}

resource "google_folder" "product2" {
  display_name = var.product2
  parent       = google_folder.Production.name
}

resource "google_folder" "product1-NP" {
  display_name = var.product1
  parent       = google_folder.Non-Production.name
}

resource "google_folder" "product2-NP" {
  display_name = var.product2
  parent       = google_folder.Non-Production.name
}