class ReportService
  def fetch(user_id)
    puts "Fetching report for user #{user_id} from external API..."
    sleep(2) # simulate slow API
    "Report data for user #{user_id}"
  end
end
