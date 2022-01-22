# You run an online fashion boutique. 
# Your big annual sale is coming up, so you want to create some functionality to help you take stock of your inventory to make sure you're ready.
# 
# 1. Return a list of the names of the items in stock
# 2. Return any items that are cheap
# 3. Return any items that are out of stock
# 4. Return a single item's stock
# 5. Return the total stock

class BoutiqueInventory
  
    def initialize(items)
        @items = items
    end
  
    def item_names
        @items.map { |item| item[:name] }.sort 
    end
    
    def cheap
        @items.select { |item| item[:price] < 30 }
    end
    
    def out_of_stock
        @items.select { |item| item[:quantity_by_size].empty? }
    end
    
    def stock_for_item(name)
        @items.find { |item| item[:name] == name } [:quantity_by_size]
    end
    
    def total_stock
        @items.map { |item| item[:quantity_by_size].sum { |_, stock| stock } }.sum
    end
    
    private
    attr_reader :items
end