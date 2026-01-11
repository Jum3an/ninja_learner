# frozen_string_literal: true

module Strategy
  module ShippingStrategies
    class CalculateStrategy
      def initialize(order)
        @order = order
      end

      attr_reader :order

      def calculate
        raise NotImplementedError, 'Subclasses must implement the calculate method'
      end
    end
  end
end
