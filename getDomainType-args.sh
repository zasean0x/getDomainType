#!/bin/bash
# Argument Edition
echo "./getDomainType-args.sh (username) (api key) (url)"
echo "./getDomainType-args.sh sean r43rjuht43t8338 https://example.com"
username=$1
apiKey=$2
url=$3
curl -H "Authorization: whm $username:$apiKey" "$url:2087/json-api/get_domain_info?api.version=1" | jq '.data.domains[] | "\(.parent_domain) \(.domain) \(.domain_type)"'