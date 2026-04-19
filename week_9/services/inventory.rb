module  Services
  class Inventory
    def reserve(product_id, quantity)
      puts "Reserved #{quantity} of product #{product_id}"
    end
  end
end
