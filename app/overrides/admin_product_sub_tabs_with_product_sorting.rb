Deface::Override.new(:virtual_path => "admin/shared/_product_sub_menu",
                     :name => "admin_product_sub_tabs_with_product_sorting",
                     :insert_bottom => "[data-hook='admin_product_sub_tabs']",
                     :text => "<%= tab(:label => 'product_sorting', :route => 'positions_admin_product_taxons') %>",
                     :disabled => false)
