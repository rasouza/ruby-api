class TimestampWorker
  include Sidekiq::Worker

  def perform
    File.open('teste.txt', 'a') do |file|
      file.puts Time.now
    end
    Sidekiq::Cron::Job.find('timestamp_job').enable!
  rescue => e
    Sidekiq::Cron::Job.find('timestamp_job').disable!
    raise e
  end
end
