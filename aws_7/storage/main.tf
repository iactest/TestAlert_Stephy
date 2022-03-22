terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

resource "aws_s3_bucket" "mfadelete_7" {
  bucket = "examplebuckettftest"
  acl    = var.public
  versioning {
    mfa_delete = "false"
    enabled = "false"
  }
   website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}

resource "aws_db_instance" "education_7" {
    name                      = var.name
    instance_class            = var.class
    allocated_storage         = var.storage
    backup_retention_period   = -1
    storage_encrypted         = false
    #kms_key_id = aws_kms_key.mykey.arn
}
