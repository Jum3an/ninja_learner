module Services
  class Notification
    def send_email(email, message)
      puts "Email sent to #{email}: #{message}"
    end
  end
end
