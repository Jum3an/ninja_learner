module Decorators
  class GiftWrapDecorator < Decorator
    # @return [Float]
    def calculate_price
      @component.calculate_price + 5.0
    end
  end
end
