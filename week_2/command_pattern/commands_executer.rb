module CommandPattern
  class CommandsExecuter
    def initialize(commands: [])
      @commands = commands
    end

    attr_reader :commands

    def execute_all
      commands.each(&:execute)
    end
  end
end
