Spree::Core::Engine.routes.draw do
	namespace :admin do 

	  resources :currency_prices, :except => [ :show ]
	  resources :zone_currencies, :except => [ :show ]
	  
	end 
end