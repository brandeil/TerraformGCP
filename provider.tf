provider "google" {
  credentials = "${file("account.json")}"
  region      = "${var.region}"
  project     = "${var.project}"
}
