module Decorators
  class ExpressShippingDecorator < Decorator
    # @return [Float]
    def calculate_price
      @component.calculate_price + 15.0
    end
  end
end
