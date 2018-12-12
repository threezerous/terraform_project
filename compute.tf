resource "google_compute_instance" "ubuntu-xenial" {
	name = "ubuntu-xenail"
	machine_type = "f1-micro"
	zone = "us-east1-b"
	boot_disk {
		initialize_params {
		image = "ubuntu-1604-lts"
		}
	}


	network_interface {
		network = "default"
		access_config {}
	}

	service_account {
		scopes = ["userinfo-email", "compute-ro", "storage-ro"]
	}
}
