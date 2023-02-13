# Built for reseller access

Cpanel decided to have flakey restoration between cpanel versions.

So if you're migrating accounts from a reseller to a newer version of cpanel, it's possible the addon domains will not be handled correctly.

This is meant as a pre-check to the migrations.

Run the script to find all addon domains so you can check them post migration.

You can run the script from anywhere - however you will need jq installed.

Prompts for url, username, api key

bash <(curl -s https://raw.githubusercontent.com/zasean0x/getDomainType/main/getDomainType.sh)