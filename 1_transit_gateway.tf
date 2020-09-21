resource "aws_ec2_transit_gateway" "TGW01" {
  description                     = var.pj_name
  amazon_side_asn                 = var.TGW_bgp_asn
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
  tags                            = {Name = "${var.pj_name}-tgw01"}
}