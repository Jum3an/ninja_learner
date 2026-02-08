module SmsServices
  class AwsSms < Base
    def send(message)
      puts "AWS SMS: #{message}"
    end
  end
end
