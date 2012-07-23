class ZoneCurrency < ActiveRecord::Base
	
	validates_presence_of :zone_id
	validates_presence_of :currency
	validates_length_of :currency, :maximum => 3
	validates_length_of :currency, :minimum => 3
	validates_format_of :currency, :with => /[A-Z]/, :message => " must have one upper case"
	#validates_uniqueness_of :zone_id, :scope => [:currency]
	validates_uniqueness_of :zone_id

end
