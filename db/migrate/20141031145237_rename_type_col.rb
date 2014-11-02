class RenameTypeCol < ActiveRecord::Migration
  def change
  	add_column :reviews, :review_type, :integer
  	remove_column(:reviews, :type)
  end
end
