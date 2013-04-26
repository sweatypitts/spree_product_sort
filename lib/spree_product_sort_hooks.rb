class SpreeProductSortHooks < Spree::ThemeSupport::HookListener
  # insert_after :admin_product_sub_tabs do
  #   %(<%= tab(:label => 'product_sorting', :route => 'positions_admin_product_taxons') %>)
  # end
  Deface::Override.new(:virtual_path => "admin/shared/_product_sub_menu",
                       :name => "converted_admin_product_sub_tabs_744291855",
                       :insert_after => "[data-hook='admin_product_sub_tabs'], #admin_product_sub_tabs[data-hook]",
                       :text => "<%= tab(:label => 'product_sorting', :route => 'positions_admin_product_taxons') %>",
                       :disabled => false)
end
