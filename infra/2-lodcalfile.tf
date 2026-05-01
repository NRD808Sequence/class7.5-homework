# Generic text file that will be created by Terraform using the local

resource "local_file" "favorite_food" {
  content  = "One of my favorite food is bone marrow with lobster"
  filename = "${path.module}/foo.bar"

  lifecycle {
    prevent_destroy = true
  }
}