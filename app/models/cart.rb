class Cart < ActiveRecord::Base
    
    has_many :line_items
    has_many :items, through: :line_items
    belongs_to :user
    
    
    def add_item(item_id)
        @item = Item.find_by(:id => item_id)
        new_line_item = @item.line_items.new
        # self.line_items.push(new_line_item)
    end
    
    def total
        self.items.pluck(:price).inject(:+)
    end

end
