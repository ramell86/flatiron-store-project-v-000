class Cart < ActiveRecord::Base
    
    has_many :line_items
    has_many :items, through: :line_items
    belongs_to :user
    
    
    def add_item(item_id)
        @item = Item.find_by(:id => item_id)
        # binding.pry
        line_item = self.line_items.find_by(:item_id => @item.id)
        
        if line_item
            line_item.quantity += 1
        else
           line_item = @item.line_items.build(:cart_id => self.id)
        end
        line_item
        
    end
    
    def total
        self.items.pluck(:price).inject(:+)
    end
    def proceed_to_checkout
        self.status = "submitted"
        update_inventory
        
    end
    def update_inventory
          self.line_items.each do |items|
            items.item.inventory -= items.quantity
            items.item.save
        end
    end

end
