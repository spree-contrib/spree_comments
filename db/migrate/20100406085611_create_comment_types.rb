class CreateCommentTypes < ActiveRecord::Migration[4.2]
  def self.up
    create_table :comment_types do |t|
      t.string :name
      t.string :applies_to

      t.timestamps
    end
  end

  def self.down
    drop_table :comment_types
  end
end
