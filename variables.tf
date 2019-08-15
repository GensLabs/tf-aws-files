provider "aws" {
  region = "us-east-1"
}

variable "provided_AD_IPs" {
  type = "list"
  default = ["172.21.168.200/32","172.21.168.66/32","172.18.114.16/32","172.18.18.20/32","10.103.100.21/32","10.103.100.22/32"]
}

variable ADCD_e_W32Time {
type = "list"
default = [123, 123, "UDP", "W32Time"]
}
variable ADCD_e_RPC_Endpoint_Mapper {
type = "list"
default = [135, 135, "TCP", "RPC Endpoint Mapper"]
}
variable ADCD_e_Kerberos_T_password_change {
type = "list"
default = [464, 464, "TCP", "Kerberos password change"]
}
variable ADCD_e_Kerberos_U_password_change {
type = "list"
default = [464, 464, "UDP", "Kerberos password change"]
}
variable ADCD_e_T_LDAP {
type = "list"
default = [389, 389, "TCP", "LDAP"]
}
variable ADCD_e_U_LDAP {
type = "list"
default = [389, 389, "UDP", "LDAP"]
}
variable ADCD_e_LDAP_SSL {
type = "list"
default = [636, 636, "TCP", "LDAP SSL"]
}
variable ADCD_e_LDAP_GC {
type = "list"
default = [3268, 3268, "TCP", "LDAP GC"]
}
variable ADCD_e_LDAP_GC_SSL {
type = "list"
default = [3269, 3269, "TCP", "LDAP GC SSL"]
}
variable ADCD_e_T_DNS {
type = "list"
default = [53, 53, "TCP", "DNS"]
}
variable ADCD_ie_U_DNS {
type = "list"
default = [53, 53, "UDP", "DNS"]
}
variable ADCD_e_T_Kerberos {
type = "list"
default = [88, 88, "TCP", "Kerberos"]
}
variable ADCD_e_U_Kerberos {
type = "list"
default = [88, 88, "UDP", "Kerberos"]
}
variable ADCD_e_SMB {
type = "list"
default = [445, 445, "TCP", "SMB"]
}