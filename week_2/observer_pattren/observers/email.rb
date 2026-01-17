module ObserverPattern
  module Observers
    class Email < Observer
      def update(subject)
        puts "Email sent to #{subject.user_email}"
        puts "Email: Subject's state has changed to #{subject.state}"
      end
    end
  end
end
