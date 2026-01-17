module ObserverPattern
  module Observers
    class Sms < Observer
      def update(subject)
        puts "SMS sent to #{subject.user_phone}"
        puts "Sms: Subject's state has changed to #{subject.state}"
      end
    end
  end
end
