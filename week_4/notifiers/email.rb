module Notifiers
  class Email < Base
    def send
      puts "📧 Email: #{message}"
    end
  end
end
