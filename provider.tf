provider "google" {
  credentials = "${file("account.json")}"
  region      = "us-east1"
  project     = "fluid-cosmos-208712"
}
