class Cart < ActiveRecord::Base
    has_many :line_items
    has_many :items, through: :line_items

    def add_item(item)
        binding.pry
        new_line_item = Line_item.new(item)
        self << item
    end
    def self.carts

    end
    def total
        
    end

end
