require 'spree_core'
require 'spree_zone_pricing_hooks'

module SpreeZonePricing

  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate

=begin
  
      # Add helper to retrieve the users country
      ApplicationHelper.send(:include, Spree::ZonePricing::GetCountry)
      # Add helper to retrieve the users country, used by a number of controllers
      Spree::BaseController.send(:include, Spree::ZonePricing::GetCountry)

      # Add additional associations to allow m:m relationship
      # between zones<->variants
      Spree::Zone.send(:include, Spree::ZonePricing::Zone)
      Spree::Variant.send(:include, Spree::ZonePricing::Variant)

      # Override add_variant method so that we can use zone pricing
      Spree::Order.send(:include, Spree::ZonePricing::Order)

      # Override price
      Spree::ProductsHelper.send(:include, Spree::ZonePricing::ProductsHelper)

      # Add action to countries controller to handle country selection
      CountriesController.send(:include, Spree::ZonePricing::CountriesController)
      # Add code to set the currently country in the order
      OrdersController.send(:include, Spree::ZonePricing::OrdersController)
      # Add code to save zone prices
      Admin::VariantsController.send(:include, Spree::ZonePricing::Admin::VariantsController)
      # Add code to check zone prices after address is saved during checkout, if ship
      # country not the same change prices in order
      CheckoutsController.send(:include, Spree::ZonePricing::CheckoutsController)

=end

    end

    config.to_prepare &method(:activate).to_proc

  end

end