module Notifiers
  class Base
    def initialize(message:)
      @message = message
    end

    attr_reader :message

    def send
      raise NotImplementedError, "Subclasses must implement the send method"
    end
  end
end
