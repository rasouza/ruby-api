module Worker
  class Api
    include Sidekiq::Worker
    JOB_NAME = 'api_job'

    def perform(url)
      connection = Faraday.new(url: url)
      response = connection.get 'posts'
      payload = JSON.parse(response.body)
      p payload
    end
  end
end
