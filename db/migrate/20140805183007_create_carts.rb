class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :category_id
      t.integer :item_id
      t.integer :line_item_id
    end
    
  end
end
