#
# Provider Configuration
#

provider "aws" {
  region  = "ap-south-1"
  version = ">= 2.38.0"
  shared_credentials_file = "/home/ec2-user/cred"
  profile = "default"
  #shared_credentials_file = "/root/.aws/credentials"
  #profile                 = "default"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}
