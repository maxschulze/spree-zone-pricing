class CurrencyPrice < ActiveRecord::Base
	
	validates_presence_of :variant_id
	validates_presence_of :currency
	validates_uniqueness_of :variant_id, :scope => [:currency]

	def self.currency_types
		[
			"USD",
			"GBP",
			"CHF",
			"EUR"
		]
	end

end
