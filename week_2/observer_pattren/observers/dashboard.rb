module ObserverPattern
  module Observers
    class Dashboard < Observer
      def update(subject)
        puts "Dashboard updated"
        puts "Dashboard: Subject's state has changed to #{subject.state}"
      end
    end
  end
end
