Gem::Specification.new do |s|
  s.name        = 'spree_zone_pricing'
  s.version     = '0.1.69'
  s.date        = '2012-07-19'
  s.summary     = "Spree Zone Pricing"
  s.description = "Zone Pricing is an extension to Spree that uses the predefined zones to determine the price for a particular product variant. For example, this allows you to set different prices for the North American and Euro zones."
  s.authors     = ["Henrique Ferreira"]
  s.email       = 'henrique@creative4.it'
  s.files      += Dir['app/controllers/spree/*']
  s.files      += Dir['app/controllers/spree/admin/*']
  s.files      += Dir['app/models/*']
  s.files      += Dir['app/views/spree/admin/**/*']
  s.files      += Dir['app/overrides/spree/**/**/*']
  s.files      += Dir['config/*']
  s.files      += Dir['config/locales/*']
  s.files      += Dir['config/initializers/*']
  s.files      += Dir['db/*']
  #s.files      += Dir['db/migrate/*']
  s.files      += Dir['lib/*']
  s.files      += Dir['lib/spree/zone_pricing/*']
  s.files      += Dir['lib/spree/zone_pricing/admin/*']
  s.files      += Dir['lib/tasks/*']
  s.files      += Dir['spec/*']
  s.require_path = 'lib'
  s.homepage    =
    'https://github.com/henriquebf/spree-zone-pricing'
end