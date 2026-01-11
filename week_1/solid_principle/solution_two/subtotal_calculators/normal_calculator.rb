# frozen_string_literal: true

module SubtotalCalculators
  class NormalCalculator < Base
    def calculate
      order.items.sum { |item| item.price * item.quantity }
    end
  end
end
