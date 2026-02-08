module SmsServices
  class TwilioSms < Base
    def send(message)
      puts "Twilio SMS: #{message}"
    end
  end
end
