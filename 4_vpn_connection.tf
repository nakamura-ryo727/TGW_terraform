resource "aws_customer_gateway" "CGW01" {
  bgp_asn    = var.CGW_bgp_asn
  ip_address = var.CGW_ip_address
  type       = "ipsec.1"
  tags       = {Name = "${var.pj_name}-cgw01"}
}

resource "aws_vpn_connection" "VPN01" {
  customer_gateway_id = aws_customer_gateway.CGW01.id
  transit_gateway_id  = aws_ec2_transit_gateway.TGW01.id
  type                = aws_customer_gateway.CGW01.type
  tags                = {Name = "${var.pj_name}-vpn01"}
}

resource "aws_ec2_tag" "TGW-ATTA-VPN01" {
  resource_id = aws_vpn_connection.VPN01.transit_gateway_attachment_id
  key         = "Name"
  value       = "${var.pj_name}-tgw-atta-vpn01"
}