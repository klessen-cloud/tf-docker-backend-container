resource "docker_container" "backend_component" {
  image = "form3tech-oss/platformtest-${var.component}"
  name  = "${var.component}_${var.environment}"

  env = [
    "VAULT_ADDR=${var.vault_addr}",
    "VAULT_USERNAME=${var.vault_username}",
    "VAULT_PASSWORD=${var.vault_password}",
    "ENVIRONMENT=${var.environment}"
  ]

  networks_advanced {
    name = "vagrant_${var.environment}"
  }

  lifecycle {
    ignore_changes = all
  }
}
