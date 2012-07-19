class Spree::Admin::ZonePricesController < Spree::Admin::BaseController 

	def index
		@zone_prices = ZonePrice.page(params[:page]||1).per(20)
	end

	def new
		@zone_price = ZonePrice.new
		@form_target = admin_zone_prices_path
		@form_method = :post
	end

	def create
		@zone_price = ZonePrice.new(params[:zone_price])

		if @zone_price.save
			#cache_reset
			redirect_to admin_zone_prices_path, notice: 'Item was successfully created.'
		else
			@form_target = admin_zone_prices_path
			@form_method = :post
			render action: "new"
		end
	end

	def edit
		@zone_price = ZonePrice.find(params[:id])
		@form_target = admin_zone_price_path(@zone_price)
		@form_method = :put
	end

	def update
		@zone_price = ZonePrice.find(params[:id])

		if @zone_price.update_attributes(params[:zone_price])
			#cache_reset
			redirect_to admin_zone_prices_path, notice: 'Item was successfully updated.'
		else
			@form_target = admin_zone_price_path(@zone_price)
			@form_method = :put
			render action: "edit"
		end
	end

	def destroy
		@zone_price = ZonePrice.find(params[:id])

		@zone_price.destroy
		#cache_reset
		redirect_to admin_zone_prices_url
	end

end