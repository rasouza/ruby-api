module Cron
  class Date
    include Sidekiq::Worker
    JOB_NAME = 'date_job'

    def perform(start_date = 1.day.ago, end_date = Time.current)
      p [Time.now, Time.current]
    end
  end
end
