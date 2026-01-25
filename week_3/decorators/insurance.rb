module Decorators
  class Insurance < Decorator
    # @return [Float]
    def calculate_price
      @component.calculate_price + 10.0
    end
  end
end
