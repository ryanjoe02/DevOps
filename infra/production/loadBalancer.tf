resource "ncloud_subnet" "be-lb" {
  vpc_no         = ncloud_vpc.main.id
  subnet         = cidrsubnet(ncloud_vpc.main.ipv4_cidr_block, 8, 2)
  zone           = "KR-2"
  network_acl_no = ncloud_vpc.main.default_network_acl_no
  subnet_type    = "PUBLIC"
  name           = "be-lb-subnet"
  usage_type     = "LOADB"
}

resource "ncloud_lb" "be" {
  name           = "be-lb-prod"
  network_type   = "PUBLIC"
  type           = "NETWORK_PROXY"
  subnet_no_list = [ncloud_subnet.main.subnet_no]
}

resource "ncloud_lb_target_group" "be" {
  vpc_no      = ncloud_vpc.main.vpc_no
  protocol    = "PROXY_TCP"
  target_type = "VSVR"
  port        = 8080
  description = "for django be"
  health_check {
    protocol       = "TCP"
    http_method    = "GET"
    port           = 8080
    url_path       = "/admin"
    cycle          = 30
    up_threshold   = 2
    down_threshold = 2
  }
  algorithm_type = "RR"
}
resource "ncloud_lb_target_group_attachment" "be" {
  target_group_no = ncloud_lb_target_group.be.target_group_no
  target_no_list  = [ncloud_server.be.instance_no]
}

resource "ncloud_lb_listener" "test" {
  load_balancer_no = ncloud_lb.be.load_balancer_no
  protocol         = "HTTP"
  port             = 80
  target_group_no  = ncloud_lb_target_group.be.target_group_no
}

