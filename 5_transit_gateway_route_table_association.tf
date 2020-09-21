resource "aws_ec2_transit_gateway_route_table_association" "association_vpc01" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.TGW-ATTA-VPC01.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.TGW-RTB01.id
}

resource "aws_ec2_transit_gateway_route_table_association" "association_vpn01" {
  transit_gateway_attachment_id  = aws_vpn_connection.VPN01.transit_gateway_attachment_id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.TGW-RTB01.id
}