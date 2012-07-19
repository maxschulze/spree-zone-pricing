#map.namespace :admin do |admin|
#   admin.resources :products do |product|
#     product.resources :variants, :member => {:zone_prices => :get}
#   end
#end

Spree::Core::Engine.routes.prepend do 
	namespace :admin do 

	  resources :zone_prices, :except => [ :show ]
	  
	end 
end