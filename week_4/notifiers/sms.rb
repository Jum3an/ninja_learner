module Notifiers
  class Sms < Base
    def send
      puts "📱 SMS: #{message}"
    end
  end
end
