# frozen_string_literal: true

module Strategy
  class ShippingCalculator
    def initialize(calculate_strategy)
      @calculate_strategy = calculate_strategy
    end

    attr_accessor :calculate_strategy

    def calculate(order)
      @calculate_strategy.calculate(order)
    end
  end
end

# # Example usage:
# order = OpenStruct.new(weight: 5)
# strategy = Strategy::ShippingStrategies::DhlCalculationStrategy.new(order)
# calculator = Strategy::ShippingCalculator.new(strategy)
# puts calculator.calculate(order)  # Outputs the shipping cost based on DHL strategy
