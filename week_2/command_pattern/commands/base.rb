module CommandPattern::Commands
  class Base
    def initialize(receiver:)
      @receiver = receiver
    end

    attr_accessor :receiver

    def execute
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
