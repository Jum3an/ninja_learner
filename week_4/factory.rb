class Factory
  def initialize(type:, message:)
    @type = type
    @message = message
  end

  attr_reader :message, :type

  def call
    "Notifiers::#{type.capitalize}".constantize.new(message: message)
  end
end

# Example usage:
# factory = Factory.new(type: 'sms', message: 'Hello via SMS!')
# notifier = factory.call
# notifier.send
