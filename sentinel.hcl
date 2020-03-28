policy "allow-s3-private-only" {
    enforcement_level = "soft-mandatory"
}

policy "disallow-s3-acl-public-read-write" {
    enforcement_level = "soft-mandatory"
}

policy "disallow-s3-acl-public-read" {
    enforcement_level = "soft-mandatory"
}

policy "enforce-s3-versioning-mfa-delete-enabled-true" {
    enforcement_level = "soft-mandatory"
}

policy "enforce-s3-versioning-enabled-true" {
    enforcement_level = "soft-mandatory"
}

policy "enforce-s3-server-side-encryption-enabled-true" {
    enforcement_level = "soft-mandatory"
}

policy "enforce-s3-logging-true" {
    enforcement_level = "advisory"
}
