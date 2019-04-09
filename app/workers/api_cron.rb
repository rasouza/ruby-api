module Cron
  class Api
    include Sidekiq::Worker
    JOB_NAME = 'api_job'

    def perform(url)
      api = Faraday.new(url: url)
      response = api.get 'posts'
      payload = JSON.parse(response.body)
      p payload
    end
  end
end
