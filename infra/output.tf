# output for our VPC name

output "vpc_name" {
    value = google_compute_network.week7_vpc.name
}

output "file_contnet" {
    value = local_file.favorite_food.content
}