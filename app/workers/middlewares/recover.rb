
class Recover

  STATUS_ENABLED = 'enabled'
  STATUS_DISABLED = 'disabled'

  def call(worker, job_context, queue)
    yield

    is_retry = job_context.with_indifferent_access.key?(:retry_count)
    job = Sidekiq::Cron::Job.find(worker.class::JOB_NAME)

    job.enable! if job.status == STATUS_DISABLED && is_retry
  end
end

