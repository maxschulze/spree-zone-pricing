Spree::Admin::VariantsController.class_eval do

	prepend_after_filter :update_zone_prices

	private

		def update_zone_prices

			#Here should update the zone/currency prices

		end
	
end