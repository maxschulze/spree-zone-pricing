Spree::Core::Engine.routes.prepend do 
	namespace :admin do 

	  resources :currency_prices, :except => [ :show ]
	  resources :zone_currencies, :except => [ :show ]
	  
	end 
end