module Notifiers
  class Push < Base
    def send
      puts "🔔 Push: #{message}"
    end
  end
end
