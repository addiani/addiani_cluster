resource "aws_route53_record" "api-saidcluster-com" {
  name = "api.saidcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-saidcluster-com.dns_name}"
    zone_id                = "${aws_elb.api-saidcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2O95U50KZBCYJ"
}

resource "aws_route53_record" "bastion-saidcluster-com" {
  name = "bastion.saidcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-saidcluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-saidcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z2O95U50KZBCYJ"
}

resource "aws_route53_zone_association" "Z2O95U50KZBCYJ" {
  zone_id = "/hostedzone/Z2O95U50KZBCYJ"
  vpc_id  = "${aws_vpc.saidcluster-com.id}"
}