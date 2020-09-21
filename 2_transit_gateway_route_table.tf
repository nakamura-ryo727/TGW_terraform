resource "aws_ec2_transit_gateway_route_table" "TGW-RTB01" {
  transit_gateway_id = aws_ec2_transit_gateway.TGW01.id
  tags               = {Name = "${var.pj_name}-tgw-rtb01"}
}