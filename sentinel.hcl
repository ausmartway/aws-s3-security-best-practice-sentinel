policy "allow-s3-private-only" {
    enforcement_level = "soft-mandatory"
}

policy "disallow-s3-public-read_write" {
    enforcement_level = "soft-mandatory"
}

policy "disallow-s3-public-read" {
    enforcement_level = "soft-mandatory"
}

policy "enforce-s3-mfa-delete" {
    enforcement_level = "soft-mandatory"
}

policy "enforce-s3-versioning" {
    enforcement_level = "soft-mandatory"
}

