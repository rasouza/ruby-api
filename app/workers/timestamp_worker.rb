module Worker
  class Timestamp
    include Sidekiq::Worker

    JOB_NAME = 'timestamp_job'

    def perform(filename)
      File.open(filename, 'a') do |file|
        file.puts Time.now
      end
      Sidekiq::Cron::Job.find(JOB_NAME).enable!
    rescue => e
      Sidekiq::Cron::Job.find(JOB_NAME).disable!
      raise e
    end
  end
end
