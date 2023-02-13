#!/bin/bash
echo "Enter the server's url (Example: https://example.com )"
read url
echo "Enter the server's username (Reseller account name or root)"
read username
echo "Enter the secret API key (Note: remember to delete this key afterwards)"
read apiKey

curl -H "Authorization: whm $username:$apiKey" "$url:2087/json-api/get_domain_info?api.version=1" | jq '.data.domains[] | "\(.parent_domain) \(.domain_type)"'