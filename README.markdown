# Zone Pricing

Zone Pricing is an extension to Spree that uses the predefined zones to determine the price for a particular
product variant. For example, this allows you to set different prices for the North American and Euro zones.

A new country selection dropdown has been added to the header that allows the user to select their country
of choice. The selected country is used to determine the zone which in turn determines the prices for all
product variants. The customer is able to select the most appropriate country, all product variant prices
as well as items in the cart will be changed to reflect the prices of the selected zone.

The country selected by default in this dropdown depends on whether the customer is a guest or has logged in
as a registered user. If the customer is a guest then the country is determined by the setting in the Spree config
for "default_country_id", if on the other hand the customer has logged in as a registered customer the country is
set to the "Ship To" address country.

When the customer decides to checkout the extension will check the "Ship To" address country against the currently
selected country, if they are different the zone will be changed to the one that includes the country selected in
the "Ship To" address. Prices of items in the cart will be changed to reflect the change in zone.

## Usage

### Gemfile

	gem "spree_zone_pricing", "~> 0.1.70"

Run rake command to update database

	bundle exec rake railties:install:migrations
	bundle exec rake db:migrate

## TODO list

Zone Pricing fields within Product Variants are not updated when form is submitted.
Implement Testing


