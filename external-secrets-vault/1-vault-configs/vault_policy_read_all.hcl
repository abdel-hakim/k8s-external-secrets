path "secret/metadata/*" {
  capabilities = ["list"]
}

path "secret/data/*" {
  capabilities = ["read"]
}

path "transit/*" {
  capabilities = ["read"]
}
