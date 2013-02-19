Deface::Override.new(:virtual_path => "spree/admin/shipments/edit",
                     :name => "converted_admin_shipment_edit_buttons_233418828",
                     :insert_after => "code[erb-silent]:contains('content_for :page_actions')",
                     :partial => "spree/admin/shipments/button",
                     :disabled => false)