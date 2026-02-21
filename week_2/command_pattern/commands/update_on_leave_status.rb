module CommandPattern::Commands
  class UpdateOnLeaveStatus < Base
    def execute
      receiver.update!(on_leave: true)
    end
  end
end
