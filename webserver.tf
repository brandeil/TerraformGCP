resource "google_compute_instance" "webserver" {
  name                    = "my-webserver"
  machine_type            = "n1-standard-1"
  metadata_startup_script = "apt-get update && apt-get install -y nginx"
  zone                    = "us-east1-b"
  tags                    = ["http-server"]

  network_interface = {
    network       = "${var.network}"
    access_config = {}
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }
}

output "zone" {
  value = "${google_compute_instance.webserver.zone}"
}

output "machinetype" {
  value = "${google_compute_instance.webserver.machine_type}"
}

output "id" {
  value = "${google_compute_instance.webserver.instance_id}"
}

output "ip" {
  value = "${google_compute_instance.webserver.network_interface.0.network_ip}"
}
