# output "products" {
#   value = {
#     for product in data.ncloud_server_products.main.server_products :
#     product.id => product.product_name
#   }
# }

# resource "ncloud_public_ip" "be" {
#   server_instance_no = ncloud_server.be.instance_no
# }
# output "be_public_ip" {
#   value = ncloud_public_ip.be.public_ip
# }

# resource "ncloud_public_ip" "db" {
#   server_instance_no = ncloud_server.db.instance_no
# }
# output "db_public_ip" {
#   value = ncloud_public_ip.db.public_ip
# }

# output "be_lb_dns" {
#   value = ncloud_lb.be.domain
# }
