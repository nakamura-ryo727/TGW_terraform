resource "aws_ec2_transit_gateway_vpc_attachment" "TGW-ATTA-VPC01" {
  transit_gateway_id                              = aws_ec2_transit_gateway.TGW01.id
  vpc_id                                          = var.vpc_id
  subnet_ids                                      = var.subnet_id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags                                            = {Name = "${var.pj_name}-tgw-atta-vpc01"}
}