terraform {
	required_providers {
		aws	= {
			source	= "hashicorp/aws"
			version	= "~> 3.14.1"
		}
	}
	required_version = ">= 0.13"
}

provider "aws" {
	region	= "eu-central-1"
}