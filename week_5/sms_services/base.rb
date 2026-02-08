module SmsServices
  class Base
    def send(message)
      raise NotImplementedError, "Subclasses must implement the send method"
    end
  end
end
