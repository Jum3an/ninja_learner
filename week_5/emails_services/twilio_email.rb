module EmailServices
  class TwilioEmail < Base
    def send(message)
      puts "Twilio Email: #{message}"
    end
  end
end
