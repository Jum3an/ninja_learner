# frozen_string_literal: true

module SubtotalCalculators
  class Base
    def initialize(order:)
      @order = order
    end

    attr_reader :order

    def calculate
      raise NotImplementedError, 'Subclasses must implement the calculate method'
    end
  end
end
