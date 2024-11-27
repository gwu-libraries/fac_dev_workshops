class WorkshopWaitlistedEmailJob
  include Sidekiq::Job
  # sidekiq_options queue: :mailer

  def perform(*args)
    ParticipantMailer.workshop_waitlisted_email(
      args[0]['workshop_id'],
      args[0]['participant_id']
    )
  end
end