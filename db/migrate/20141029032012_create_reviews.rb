class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :type
      t.text :comment
      t.references :product, index: true

      t.timestamps
    end
  end
end
