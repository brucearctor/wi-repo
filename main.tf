provider "google" {
  project = "data-development-01"
}


resource "google_bigquery_dataset" "bidder" {
  dataset_id                  = "bidder"
  friendly_name               = "bidder"
  description                 = "This is a bidder dataset"
  location                    = "US"
  default_table_expiration_ms = 3600000
  project                     = "bb-example-iac-01"

  labels = {
    env = "demo"
  }

}