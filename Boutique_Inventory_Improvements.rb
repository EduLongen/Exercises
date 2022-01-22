# You're continuing to work on the stock management system you built previously. 
# Since discovering OpenStruct and block shortcuts, you've decided to refactor the code a little. 
# Rather than storing the items as hashes, you're going to utilize your newfound skills.
# 
# 1. Allow retrievable of items

require 'ostruct'

    class BoutiqueInventory
        attr_reader :items

    def initialize(items)
        @items = items.map { |item| OpenStruct.new(item) }
    end

    def item_names
        items.map(&:name).sort
    end

    def total_stock
        items.sum { |item| item.quantity_by_size.values.sum }
    end
end