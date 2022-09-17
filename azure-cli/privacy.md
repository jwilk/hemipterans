https://github.com/Azure/azure-cli/blob/azure-cli-2.38.0/src/azure-cli-core/azure/cli/core/telemetry.py#L508

The MAC address is hashed, but since it's only 48-bit, the hashing could be reversed.
