class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :inventory
      t.integer :price
      t.integer :category_id
      t.integer :cart_id
      t.integer :line_item_id

    end

  end
end
