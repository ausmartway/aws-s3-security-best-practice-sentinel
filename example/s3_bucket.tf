provider "aws" {
  region = "ap-southeast-2"
}

//dependent resources
resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "yulei-logging-target" {
  bucket = "yulei-logging-target"
  acl    = "log-delivery-write"

  tags = {
    owner = "yulei"
  }
}

// resource "aws_s3_bucket" "demo-bucket-without-acl" {
//   bucket = "demo-bucket-without-acl"

//   tags = {
//     owner = "yulei"
//   }
// }

// resource "aws_s3_bucket" "demo-bucket-private-acl" {
//   bucket = "demo-bucket-private-acl"
//   acl    = "private"

//   tags = {
//     owner = "yulei"
//   }
// }

resource "aws_s3_bucket" "bucket-public-read-write-acl" {
  bucket = "bucket-public-read-write-acl"
  acl    = "public-read-write"


  tags = {
    owner = "yulei"
  }
}


// resource "aws_s3_bucket" "bucket-versioning-disabled" {
//   bucket = "bucket-versioning-disabled"
//   acl    = "private"


//   versioning {
//     enabled    = false
//     mfa_delete = false
//   }


//   tags = {
//     owner = "yulei"
//   }
// }


// resource "aws_s3_bucket" "bucket-with-server-side-encryption-set" {
//   bucket = "bucket-with-server-side-encryption-set"
//   acl    = "private"


//   server_side_encryption_configuration {
//     rule {
//       apply_server_side_encryption_by_default {
//         kms_master_key_id = "aws_kms_key.mykey.arn"
//         sse_algorithm     = "aws:kms"
//       }
//     }
//   }


//   tags = {
//     owner = "yulei"
//   }
// }

