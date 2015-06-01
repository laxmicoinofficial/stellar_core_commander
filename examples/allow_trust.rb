account :usd_gateway
account :scott
account :andrew

payment :master, :usd_gateway, [:native, 1000 * Stellar::ONE]
payment :master, :scott, [:native, 1000 * Stellar::ONE]
payment :master, :andrew, [:native, 1000 * Stellar::ONE]

close_ledger

require_trust_auth :usd_gateway

close_ledger

trust :scott,  :usd_gateway, "USD"
trust :andrew, :usd_gateway, "USD"

close_ledger

allow_trust :usd_gateway, :scott, "USD"
