module EmailServices
  class AwsEmail < Base
    def send(message)
      puts "AWS Email: #{message}"
    end
  end
end
