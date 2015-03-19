Deface::Override.new(:virtual_path => "spree/admin/shared/sub_menu/_configuration",
                     :name => "converted_admin_configurations_menu_468573024",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => "<%= configurations_sidebar_menu_item Spree.t(:comment_types), admin_comment_types_path %>",
                     :disabled => false)