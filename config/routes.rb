Spree::Core::Engine.routes.prepend do 
	namespace :admin do 

	  resources :zone_prices, :except => [ :show ]
	  
	end 
end