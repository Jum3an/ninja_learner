class OrderPrice < Component
  def initialize(base_price:)
    @base_price = base_price
  end

  attr_reader :base_price

  def calculate_price
    base_price
  end
end
# Example usage:
# base_order = OrderPrice.new(base_price: 100.0)
# express_shipping = Decorators::ExpressShippingDecorator.new(component: base_order)
# gift_wrap = Decorators::GiftWrapDecorator.new(component: express_shipping)
# insurance = Decorators::Insurance.new(component: gift_wrap)
# total_price = insurance.calculate_price
# puts total_price  # Output will be 130.0
