# aws ec2 modify-vpc-endpoint --vpc-endpoint-id vpce-0e033002ea7bf8393 --add-security-group-ids sg-0f983cd0e69386f3d

# resource "aws_vpc_endpoint" "ec2" {
#   vpc_id                = "vpc-06a555e2edb3c477e"
#   service_name          = "com.amazonaws.us-east-1.ec2"
#   vpc_endpoint_type     = "Interface"
#   security_group_ids    = ["${aws_security_group.secgrp_fdn_ports.id}"]
# }

# data "aws_security_group" "dgetsg" {
#   id = "sg-0ae5171e78354c793"
#   vpc_id = "vpc-06a555e2edb3c477e"
# }

# data "aws_vpc_endpoint" "dgetvpce" {
#   service_name          = "com.amazonaws.us-east-1.ec2"
#   id                    = "vpce-0e033002ea7bf8393"
  
# }

# data "aws_instance" "instance" {
#   instance_id           = "i-015fef462320c2bed"
# }

# resource "aws_network_interface_sg_attachment" "attach" {
#   security_group_id     = "${aws_security_group.secgrp_fdn_ports.id}"
#   network_interface_id  = "${data.aws_instance.instance.network_interface_id}"
#  # network_interface_id = "eni-0946e99525b8a9f99"
# }



resource "aws_security_group" "secgrp_fdn_ports" {
  description            = "Allow inbound/outbound traffic"
  vpc_id                 = "vpc-06a555e2edb3c477e"
  revoke_rules_on_delete = false
  name                  = "Test01"
  #name_prefix            = "testing- "
  #security_group_ids = "[${aws_security_group.secgrp_fdn_ports.id}]"
  

    tags = {
   name              = "1-My-Test"
   Name              = "1-My-Test-${count.index +1}"
   application_id    = "ITA"
   environment       = "DEV"
   termination_date  = "NONE"
   created_by        = "rmashrouteh@dtcc.com"
   stack_name        = "using TF to create Security Groups"
   description       = "creating new security groups to replace dtcc_admin group"
   data_class        = "Yellow"
 }
 
#}

# count = "${length(var.provided_Eg_Test_IPs) * length(var.ports_in)}"
  #for_each = "${length(var.provided_Eg_Test_IPs)}"
# tags{
# Name = "test-secgrp_fdn_ports ${count.index}. ${element(var.provided_Eg_Test_IPs, ceil(count.index/length(var.ports_in)))}:${element(var.ports_in, count.index)}"
# }

#ingress{
#    from_port         = "${var.Syslog_e_Test_U[0]}"
#    to_port           = "${var.Syslog_e_Test_U[1]}"
#    protocol          = "${var.Syslog_e_Test_U[2]}"
#    security_groups   = ["sg-29428a52"]
#  #  security_groups   = ["sg-3ffa1d72"]
#    description       = "${var.Syslog_e_Test_U[3]}"
# #  }
# ingress{
#  # cidr_blocks        = ["${lookup(var.provided_Eg_Test_IPs[0]}"]
#    cidr_blocks       = ["${var.provided_Eg_Test_IPs[0]}"]
#    from_port         = "${var.Syslog_e_Test_T[0]}"
#    to_port           = "${var.Syslog_e_Test_T[1]}"
#    protocol          = "${var.Syslog_e_Test_T[2]}"
#    description       = "${var.Syslog_e_Test_T[3]}"
#  } 
# ingress{
#  # cidr_blocks        = ["${lookup(var.provided_Eg_Test_IPs[0]}"]
#    cidr_blocks       = ["${var.provided_Eg_Test_IPs[1]}"]
#    from_port         = "${var.Syslog_e_Test_T[0]}"
#    to_port           = "${var.Syslog_e_Test_T[1]}"
#    protocol          = "${var.Syslog_e_Test_T[2]}"
#    description       = "${var.Syslog_e_Test_T[3]}"
#  } 

# egress{
#  # cidr_blocks        = ["${lookup(var.provided_Eg_Test_IPs[0]}"]
#    cidr_blocks       = ["${var.provided_Eg_Test_IPs[0]}"]
#    from_port         = "${var.Syslog_e_Test_T[0]}"
#    to_port           = "${var.Syslog_e_Test_T[1]}"
#    protocol          = "${var.Syslog_e_Test_T[2]}"
#    description       = "${var.Syslog_e_Test_T[3]}"
# }
# egress{
#  # cidr_blocks        = ["${lookup(var.provided_Eg_Test_IPs[0]}"]
#    cidr_blocks       = ["${var.provided_Eg_Test_IPs[1]}"]
#    from_port         = "${var.Syslog_e_Test_T[0]}"
#    to_port           = "${var.Syslog_e_Test_T[1]}"
#    protocol          = "${var.Syslog_e_Test_T[2]}"
#    description       = "${var.Syslog_e_Test_T[3]}"
#  }       

#
#ingress{
#    cidr_blocks       = ["${element(var.provided_Eg_Test_IPs,count.index)}"]
#    from_port         = "${var.sat_Eg_Test_80[0]}"
#    to_port           = "${var.sat_Eg_Test_80[1]}"
#    protocol          = "${var.sat_Eg_Test_80[2]}"
#  #  security_groups   = ["sg-29428a52"]
#  #  security_groups   = ["sg-7b36d40d/cvkikp"]
#    description       = "${var.sat_Eg_Test_80[3]}"
#  }
#
#egress{
#    cidr_blocks       = ["${element(var.provided_Eg_Test_IPs,count.index)}"]
#    from_port         = "${var.sat_Eg_Test_443[0]}"
#    to_port           = "${var.sat_Eg_Test_443[1]}"
#    protocol          = "${var.sat_Eg_Test_443[2]}"
#  #  security_groups   = ["sg-29428a52"]
#  #  security_groups   = ["sg-7b36d40d/cvkikp"]
#    description       = "${var.sat_Eg_Test_443[3]}"
#  }
#egress{
#    from_port         = "${var.sat_Eg_Test_80[0]}"
#    to_port           = "${var.sat_Eg_Test_80[1]}"
#    protocol          = "${var.sat_Eg_Test_80[2]}"
#    security_groups   = ["sg-29428a52"]  
#  #  security_groups   = ["sg-7b36d40d/cvkikp"]
#    description       = "${var.sat_Eg_Test_80[3]}"
#  }
#egress{
#    from_port         = "${var.sat_Eg_Test_5000[0]}"
#    to_port           = "${var.sat_Eg_Test_5000[1]}"
#    protocol          = "${var.sat_Eg_Test_5000[2]}"
#    security_groups   = ["sg-29428a52"]  
#  #  security_groups   = ["sg-7b36d40d/cvkikp"]
#    description       = "${var.sat_Eg_Test_5000[3]}"
#  }
#  

#


# resource "aws_network_interface_sg_attachment" "sg_attachment" {
#   security_group_id    = "${aws_security_group.secgrp_fdn_ports.id}"
#   network_interface_id = "eni-0d6432b8dd891fa90"
  
#  # network_interface_id = "${data.aws_instance.instance.network_interface_id}"

  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_W32Time[0]}"
    to_port           = "${var.ADCD_e_W32Time[1]}"
    protocol          = "${var.ADCD_e_W32Time[2]}"
    description       = "${var.ADCD_e_W32Time[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_RPC_Endpoint_Mapper[0]}"
    to_port           = "${var.ADCD_e_RPC_Endpoint_Mapper[1]}"
    protocol          = "${var.ADCD_e_RPC_Endpoint_Mapper[2]}"
    description       = "${var.ADCD_e_RPC_Endpoint_Mapper[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_Kerberos_T_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_T_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_T_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_T_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_Kerberos_U_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_U_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_U_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_U_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_T_LDAP[0]}"
    to_port           = "${var.ADCD_e_T_LDAP[1]}"
    protocol          = "${var.ADCD_e_T_LDAP[2]}"
    description       = "${var.ADCD_e_T_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_U_LDAP[0]}"
    to_port           = "${var.ADCD_e_U_LDAP[1]}"
    protocol          = "${var.ADCD_e_U_LDAP[2]}"
    description       = "${var.ADCD_e_U_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_LDAP_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_LDAP_GC[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC[2]}"
    description       = "${var.ADCD_e_LDAP_GC[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_LDAP_GC_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_GC_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_ie_U_DNS[0]}"
    to_port           = "${var.ADCD_ie_U_DNS[1]}"
    protocol          = "${var.ADCD_ie_U_DNS[2]}"
    description       = "${var.ADCD_ie_U_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_T_Kerberos[0]}"
    to_port           = "${var.ADCD_e_T_Kerberos[1]}"
    protocol          = "${var.ADCD_e_T_Kerberos[2]}"
    description       = "${var.ADCD_e_T_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_U_Kerberos[0]}"
    to_port           = "${var.ADCD_e_U_Kerberos[1]}"
    protocol          = "${var.ADCD_e_U_Kerberos[2]}"
    description       = "${var.ADCD_e_U_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[0]}"]
    from_port         = "${var.ADCD_e_SMB[0]}"
    to_port           = "${var.ADCD_e_SMB[1]}"
    protocol          = "${var.ADCD_e_SMB[2]}"
    description       = "${var.ADCD_e_SMB[3]}"
  }


  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_W32Time[0]}"
    to_port           = "${var.ADCD_e_W32Time[1]}"
    protocol          = "${var.ADCD_e_W32Time[2]}"
    description       = "${var.ADCD_e_W32Time[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_RPC_Endpoint_Mapper[0]}"
    to_port           = "${var.ADCD_e_RPC_Endpoint_Mapper[1]}"
    protocol          = "${var.ADCD_e_RPC_Endpoint_Mapper[2]}"
    description       = "${var.ADCD_e_RPC_Endpoint_Mapper[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_Kerberos_T_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_T_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_T_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_T_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_Kerberos_U_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_U_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_U_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_U_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_T_LDAP[0]}"
    to_port           = "${var.ADCD_e_T_LDAP[1]}"
    protocol          = "${var.ADCD_e_T_LDAP[2]}"
    description       = "${var.ADCD_e_T_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_U_LDAP[0]}"
    to_port           = "${var.ADCD_e_U_LDAP[1]}"
    protocol          = "${var.ADCD_e_U_LDAP[2]}"
    description       = "${var.ADCD_e_U_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_LDAP_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_LDAP_GC[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC[2]}"
    description       = "${var.ADCD_e_LDAP_GC[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_LDAP_GC_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_GC_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_ie_U_DNS[0]}"
    to_port           = "${var.ADCD_ie_U_DNS[1]}"
    protocol          = "${var.ADCD_ie_U_DNS[2]}"
    description       = "${var.ADCD_ie_U_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_T_Kerberos[0]}"
    to_port           = "${var.ADCD_e_T_Kerberos[1]}"
    protocol          = "${var.ADCD_e_T_Kerberos[2]}"
    description       = "${var.ADCD_e_T_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_U_Kerberos[0]}"
    to_port           = "${var.ADCD_e_U_Kerberos[1]}"
    protocol          = "${var.ADCD_e_U_Kerberos[2]}"
    description       = "${var.ADCD_e_U_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[1]}"]
    from_port         = "${var.ADCD_e_SMB[0]}"
    to_port           = "${var.ADCD_e_SMB[1]}"
    protocol          = "${var.ADCD_e_SMB[2]}"
    description       = "${var.ADCD_e_SMB[3]}"
  }

  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_W32Time[0]}"
    to_port           = "${var.ADCD_e_W32Time[1]}"
    protocol          = "${var.ADCD_e_W32Time[2]}"
    description       = "${var.ADCD_e_W32Time[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_RPC_Endpoint_Mapper[0]}"
    to_port           = "${var.ADCD_e_RPC_Endpoint_Mapper[1]}"
    protocol          = "${var.ADCD_e_RPC_Endpoint_Mapper[2]}"
    description       = "${var.ADCD_e_RPC_Endpoint_Mapper[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_Kerberos_T_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_T_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_T_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_T_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_Kerberos_U_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_U_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_U_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_U_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_T_LDAP[0]}"
    to_port           = "${var.ADCD_e_T_LDAP[1]}"
    protocol          = "${var.ADCD_e_T_LDAP[2]}"
    description       = "${var.ADCD_e_T_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_U_LDAP[0]}"
    to_port           = "${var.ADCD_e_U_LDAP[1]}"
    protocol          = "${var.ADCD_e_U_LDAP[2]}"
    description       = "${var.ADCD_e_U_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_LDAP_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_LDAP_GC[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC[2]}"
    description       = "${var.ADCD_e_LDAP_GC[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_LDAP_GC_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_GC_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_ie_U_DNS[0]}"
    to_port           = "${var.ADCD_ie_U_DNS[1]}"
    protocol          = "${var.ADCD_ie_U_DNS[2]}"
    description       = "${var.ADCD_ie_U_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_T_Kerberos[0]}"
    to_port           = "${var.ADCD_e_T_Kerberos[1]}"
    protocol          = "${var.ADCD_e_T_Kerberos[2]}"
    description       = "${var.ADCD_e_T_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_U_Kerberos[0]}"
    to_port           = "${var.ADCD_e_U_Kerberos[1]}"
    protocol          = "${var.ADCD_e_U_Kerberos[2]}"
    description       = "${var.ADCD_e_U_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[2]}"]
    from_port         = "${var.ADCD_e_SMB[0]}"
    to_port           = "${var.ADCD_e_SMB[1]}"
    protocol          = "${var.ADCD_e_SMB[2]}"
    description       = "${var.ADCD_e_SMB[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_W32Time[0]}"
    to_port           = "${var.ADCD_e_W32Time[1]}"
    protocol          = "${var.ADCD_e_W32Time[2]}"
    description       = "${var.ADCD_e_W32Time[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_RPC_Endpoint_Mapper[0]}"
    to_port           = "${var.ADCD_e_RPC_Endpoint_Mapper[1]}"
    protocol          = "${var.ADCD_e_RPC_Endpoint_Mapper[2]}"
    description       = "${var.ADCD_e_RPC_Endpoint_Mapper[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_Kerberos_T_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_T_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_T_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_T_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_Kerberos_U_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_U_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_U_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_U_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_T_LDAP[0]}"
    to_port           = "${var.ADCD_e_T_LDAP[1]}"
    protocol          = "${var.ADCD_e_T_LDAP[2]}"
    description       = "${var.ADCD_e_T_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_U_LDAP[0]}"
    to_port           = "${var.ADCD_e_U_LDAP[1]}"
    protocol          = "${var.ADCD_e_U_LDAP[2]}"
    description       = "${var.ADCD_e_U_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_LDAP_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_LDAP_GC[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC[2]}"
    description       = "${var.ADCD_e_LDAP_GC[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_LDAP_GC_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_GC_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_ie_U_DNS[0]}"
    to_port           = "${var.ADCD_ie_U_DNS[1]}"
    protocol          = "${var.ADCD_ie_U_DNS[2]}"
    description       = "${var.ADCD_ie_U_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_T_Kerberos[0]}"
    to_port           = "${var.ADCD_e_T_Kerberos[1]}"
    protocol          = "${var.ADCD_e_T_Kerberos[2]}"
    description       = "${var.ADCD_e_T_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_U_Kerberos[0]}"
    to_port           = "${var.ADCD_e_U_Kerberos[1]}"
    protocol          = "${var.ADCD_e_U_Kerberos[2]}"
    description       = "${var.ADCD_e_U_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[3]}"]
    from_port         = "${var.ADCD_e_SMB[0]}"
    to_port           = "${var.ADCD_e_SMB[1]}"
    protocol          = "${var.ADCD_e_SMB[2]}"
    description       = "${var.ADCD_e_SMB[3]}"
  }

  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_W32Time[0]}"
    to_port           = "${var.ADCD_e_W32Time[1]}"
    protocol          = "${var.ADCD_e_W32Time[2]}"
    description       = "${var.ADCD_e_W32Time[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_RPC_Endpoint_Mapper[0]}"
    to_port           = "${var.ADCD_e_RPC_Endpoint_Mapper[1]}"
    protocol          = "${var.ADCD_e_RPC_Endpoint_Mapper[2]}"
    description       = "${var.ADCD_e_RPC_Endpoint_Mapper[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_Kerberos_T_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_T_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_T_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_T_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_Kerberos_U_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_U_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_U_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_U_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_T_LDAP[0]}"
    to_port           = "${var.ADCD_e_T_LDAP[1]}"
    protocol          = "${var.ADCD_e_T_LDAP[2]}"
    description       = "${var.ADCD_e_T_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_U_LDAP[0]}"
    to_port           = "${var.ADCD_e_U_LDAP[1]}"
    protocol          = "${var.ADCD_e_U_LDAP[2]}"
    description       = "${var.ADCD_e_U_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_LDAP_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_LDAP_GC[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC[2]}"
    description       = "${var.ADCD_e_LDAP_GC[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_LDAP_GC_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_GC_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_ie_U_DNS[0]}"
    to_port           = "${var.ADCD_ie_U_DNS[1]}"
    protocol          = "${var.ADCD_ie_U_DNS[2]}"
    description       = "${var.ADCD_ie_U_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_T_Kerberos[0]}"
    to_port           = "${var.ADCD_e_T_Kerberos[1]}"
    protocol          = "${var.ADCD_e_T_Kerberos[2]}"
    description       = "${var.ADCD_e_T_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_U_Kerberos[0]}"
    to_port           = "${var.ADCD_e_U_Kerberos[1]}"
    protocol          = "${var.ADCD_e_U_Kerberos[2]}"
    description       = "${var.ADCD_e_U_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[4]}"]
    from_port         = "${var.ADCD_e_SMB[0]}"
    to_port           = "${var.ADCD_e_SMB[1]}"
    protocol          = "${var.ADCD_e_SMB[2]}"
    description       = "${var.ADCD_e_SMB[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_W32Time[0]}"
    to_port           = "${var.ADCD_e_W32Time[1]}"
    protocol          = "${var.ADCD_e_W32Time[2]}"
    description       = "${var.ADCD_e_W32Time[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_RPC_Endpoint_Mapper[0]}"
    to_port           = "${var.ADCD_e_RPC_Endpoint_Mapper[1]}"
    protocol          = "${var.ADCD_e_RPC_Endpoint_Mapper[2]}"
    description       = "${var.ADCD_e_RPC_Endpoint_Mapper[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_Kerberos_T_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_T_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_T_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_T_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_Kerberos_U_password_change[0]}"
    to_port           = "${var.ADCD_e_Kerberos_U_password_change[1]}"
    protocol          = "${var.ADCD_e_Kerberos_U_password_change[2]}"
    description       = "${var.ADCD_e_Kerberos_U_password_change[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_T_LDAP[0]}"
    to_port           = "${var.ADCD_e_T_LDAP[1]}"
    protocol          = "${var.ADCD_e_T_LDAP[2]}"
    description       = "${var.ADCD_e_T_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_U_LDAP[0]}"
    to_port           = "${var.ADCD_e_U_LDAP[1]}"
    protocol          = "${var.ADCD_e_U_LDAP[2]}"
    description       = "${var.ADCD_e_U_LDAP[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_LDAP_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_LDAP_GC[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC[2]}"
    description       = "${var.ADCD_e_LDAP_GC[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_LDAP_GC_SSL[0]}"
    to_port           = "${var.ADCD_e_LDAP_GC_SSL[1]}"
    protocol          = "${var.ADCD_e_LDAP_GC_SSL[2]}"
    description       = "${var.ADCD_e_LDAP_GC_SSL[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_ie_U_DNS[0]}"
    to_port           = "${var.ADCD_ie_U_DNS[1]}"
    protocol          = "${var.ADCD_ie_U_DNS[2]}"
    description       = "${var.ADCD_ie_U_DNS[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_T_Kerberos[0]}"
    to_port           = "${var.ADCD_e_T_Kerberos[1]}"
    protocol          = "${var.ADCD_e_T_Kerberos[2]}"
    description       = "${var.ADCD_e_T_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_U_Kerberos[0]}"
    to_port           = "${var.ADCD_e_U_Kerberos[1]}"
    protocol          = "${var.ADCD_e_U_Kerberos[2]}"
    description       = "${var.ADCD_e_U_Kerberos[3]}"
  }
  egress {
    cidr_blocks       = ["${var.provided_AD_IPs[5]}"]
    from_port         = "${var.ADCD_e_SMB[0]}"
    to_port           = "${var.ADCD_e_SMB[1]}"
    protocol          = "${var.ADCD_e_SMB[2]}"
    description       = "${var.ADCD_e_SMB[3]}"
  }  
egress{
    from_port         = "${var.ADCD_e_T_DNS[0]}"
    to_port           = "${var.ADCD_e_T_DNS[1]}"
    protocol          = "${var.ADCD_e_T_DNS[2]}"
    security_groups   = ["sg-01ef67d70c481d239"]
    description       = "${var.ADCD_e_T_DNS[3]}"
  }
 }