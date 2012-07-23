class Spree::Admin::ZoneCurrenciesController < Spree::Admin::BaseController 

	def index
		zones = Spree::Zone.all
		zones.each do |zone|
			zone_currency = ZoneCurrency.find_by_zone_id(zone.id)
			if zone_currency.nil?
				zone_currency = ZoneCurrency.new
				zone_currency.zone_id  = zone.id
				zone_currency.currency = CurrencyPrice.currency_types[0]
				zone_currency.save
			end
		end

		@zone_currencies = ZoneCurrency.page(params[:page]||1).per(20)
	end

	def new
		@zone_currency = ZoneCurrency.new
		@form_target = admin_zone_currencies_path
		@form_method = :post
	end

	def create
		@zone_currency = ZoneCurrency.new(params[:zone_currency])

		if @zone_currency.save
			#cache_reset
			redirect_to admin_zone_currencies_path, notice: 'Item was successfully created.'
		else
			@form_target = admin_zone_currencies_path
			@form_method = :post
			render action: "new"
		end
	end

	def edit
		@zone_currency = ZoneCurrency.find(params[:id])
		@form_target = admin_zone_currency_path(@zone_currency)
		@form_method = :put
	end

	def update
		@zone_currency = ZoneCurrency.find(params[:id])

		if @zone_currency.update_attributes(params[:zone_currency])
			#cache_reset
			redirect_to admin_zone_currencies_path, notice: 'Item was successfully updated.'
		else
			@form_target = admin_zone_currency_path(@zone_currency)
			@form_method = :put
			render action: "edit"
		end
	end

	def destroy
		@zone_currency = ZoneCurrency.find(params[:id])

		@zone_currency.destroy
		#cache_reset
		redirect_to admin_zone_currencies_url
	end

end