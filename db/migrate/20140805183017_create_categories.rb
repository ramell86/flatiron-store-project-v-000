class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :item_id
      t.integer :line_item_id

    end

  end
end
