# frozen_string_literal: true

module DiscountsCalculators
  class Base
    def initialize(subtotal:)
      @subtotal = subtotal
    end
    
    attr_reader :subtotal

    def apply
      raise NotImplementedError, 'Subclasses must implement the apply method'
    end
  end
end
