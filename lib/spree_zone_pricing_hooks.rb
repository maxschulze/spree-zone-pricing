Deface::Override.new(:virtual_path => "layouts/spree_application", 
                     :name => "logo", 
                     :replace_contents => "#logo", 
                     :text => "Store")

# Add zone pricing tab to products admin area
#insert_after :admin_product_tabs, :partial => "admin/shared/zp_product_tab"

# Add zone pricing to variant edit form
#insert_after :admin_variant_edit_form, :partial => 'admin/shared/zone_prices'