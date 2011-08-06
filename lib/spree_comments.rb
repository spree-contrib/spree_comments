require 'spree_core'
require 'acts_as_commentable'
require 'spree_comments_hooks'

module SpreeComments
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

	  def self.activate
	    Order.class_eval do
	      acts_as_commentable
	    end
	
	    Shipment.class_eval do
	      acts_as_commentable
	    end
	
	    Admin::OrdersController.class_eval do
	      def comments
	        load_order
	        @comment_types = CommentType.where(:applies_to => "Order")
	      end
	    end
	
	    Admin::ShipmentsController.class_eval do
	      def comments
	        load_shipment
	        @comment_types = CommentType.where(:applies_to => "Shipment")
	      end
	    end
	
	  end

    config.to_prepare  &method(:activate).to_proc
	end
end
