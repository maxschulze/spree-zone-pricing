class Spree::Admin::CurrencyPricesController < Spree::Admin::BaseController 

	def index
		@currency_prices = Spree::CurrencyPrice.page(params[:page]||1).per(20)
	end

	def new
		@currency_price = Spree::CurrencyPrice.new
		@form_target = admin_currency_prices_path
		@form_method = :post
	end

	def create
		@currency_price = Spree::CurrencyPrice.new(params[:currency_price])

		if @currency_price.save
			#cache_reset
			redirect_to admin_currency_prices_path, notice: 'Item was successfully created.'
		else
			@form_target = admin_currency_prices_path
			@form_method = :post
			render action: "new"
		end
	end

	def edit
		@currency_price = Spree::CurrencyPrice.find(params[:id])
		@form_target = admin_currency_price_path(@currency_price)
		@form_method = :put
	end

	def update
		@currency_price = Spree::CurrencyPrice.find(params[:id])

		if @currency_price.update_attributes(params[:currency_price])
			#cache_reset
			redirect_to admin_currency_prices_path, notice: 'Item was successfully updated.'
		else
			@form_target = admin_currency_price_path(@currency_price)
			@form_method = :put
			render action: "edit"
		end
	end

	def destroy
		@currency_price = CurrencyPrice.find(params[:id])

		@currency_price.destroy
		#cache_reset
		redirect_to admin_currency_prices_url
	end

end