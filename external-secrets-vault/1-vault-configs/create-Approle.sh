vault auth enable approle
vault write auth/approle/role/secret token_policies="read-all"

# Read Policy
vault read auth/approle/role/secret

# Get role-id
vault read auth/approle/role/secret/role-id
# Key        Value
# ---        -----
# role_id    d537b15f-3fe4-b196-174e-848c096fbfe7

# Get Secert ID
vault write -force auth/approle/role/secret/secret-id
# Key                   Value
# ---                   -----
# secret_id             3985eed5-dcc1-9142-9de6-5bd6cdacbb7d
# secret_id_accessor    05b3a23f-a966-2e3e-8e1d-aa2cc5c7fe10
# secret_id_num_uses    0
# secret_id_ttl         0s
