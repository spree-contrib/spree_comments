class PrefixTablesWithSpree < ActiveRecord::Migration
  def change
    rename_table :comments, :spree_comments
    rename_table :comment_types, :spree_comment_types
	end
end
