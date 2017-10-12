class Item < ActiveRecord::Base

    belongs_to :category
    has_many :line_items
    has_many :items, through: :line_items

    def self.available_items
          where('inventory > ?', 0)
        
        # self.all.reject{|t| t.inventory == 0}.each do |i|
        #     i.title
        # end
    end
    def adjust(amount)
        update(inventory: inventory - amount)
    end

    
end
