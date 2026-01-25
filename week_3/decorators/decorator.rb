module Decorators
  class Decorator < Component
    attr_accessor :component

    def initialize(component:)
      @component = component
    end

    def calculate_price
      @component.calculate_price
    end
  end
end
