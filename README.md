# asw-s3-security-best-practice-sentinel

![sentinel test status:](https://github.com/ausmartway/aws-s3-security-best-practice-sentinel/workflows/sentinel/badge.svg)

This is a repo containing a set of Sentinel policies that make sure your s3 is inline with [AWS S3 security best practices](https://docs.aws.amazon.com/AmazonS3/latest/dev/security-best-practices.html).

The repo will be updated and expanded.

# How to use this repo

## Register a free TFC account and apply for Governance trial.

You can apply a free Terraform Cloud account from [here](https://app.terraform.io/signup/account). 

Once you get a free acount, you can apply Terraform Cloud Governance trial in the Plan and Billing setting of your orgnization.
![Setting up TFC trial step 1](https://github.com/ausmartway/aws-s3-security-best-practice-sentinel/blob/master/pictures/starting_paid_trial_1.png)

![Setting up TFC trial step 2](https://github.com/ausmartway/aws-s3-security-best-practice-sentinel/blob/master/pictures/starting_paid_trial_2.png)


## Connect to this repo as a policy set and select workspaces that you want to govern.

You can connect to this repo directly from Terraform Cloud or Terraform Enterprise following this [link](https://www.terraform.io/docs/cloud/getting-started/policies.html#integrating-with-vcs). 

![Connecting a policy set](https://github.com/ausmartway/aws-s3-security-best-practice-sentinel/blob/master/pictures/connect_a_policy_set.png)

You can also fork into your own repo and edit sentinel.hcl to select the policies you want to use and enforcement level.

## Create a pull request into the repo that's connected to your workspace and see sentinel in action

For example below Terraform code:
```
resource "aws_s3_bucket" "bucket-public-read-write-acl" {
  bucket = "bucket-public-read-write-acl"
  acl    = "public-read-write"


  tags = {
    owner = "yulei"
  }
}
```

Will result in:
![Failed to pass Sentinel Policy Set](https://github.com/ausmartway/aws-s3-security-best-practice-sentinel/blob/master/pictures/failed_sentinel_check.png)



# How to contribute

Please raise any issues you have via this [link](https://github.com/ausmartway/aws-s3-security-best-practice-sentinel/issues/new/choose).

You can create pull request to add more policies into this repo, it is expected that each of your policy should have at least one pass and one fail test case, and their corresponding mocks.

You can find the test cases in the test directory and mocks in mocks directory.
