provider "google" {
  project     = "yuri-devops-iac"
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = "${file("serviceaccount.yaml")}"
}

resource "google_folder" "Financeiro" {
  display_name = "Financeiro"
  parent       = "organizations/540829645030"
}

resource "google_folder" "SalesForce" {
  display_name = "SalesForce"
  parent       = google_folder.Financeiro.name
}

resource "google_folder" "Desenvolvimento" {
  display_name = "Desenvolvimento"
  parent       = google_folder.SalesForce.name
}

resource "google_folder" "Producao" {
  display_name = "Producao"
  parent       = google_folder.SalesForce.name
}

resource "google_project" "salesforce-dev" {
  name               = "SalesForce-Dev"
  project_id         = "salesforce-dev"
  folder_id          = google_folder.Desenvolvimento.name
  auto_create_network = false
  billing_account    = "018973-A8340F-83D8E5"
}
