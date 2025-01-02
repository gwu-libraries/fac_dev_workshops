class WorkshopApplicationReceivedEmailJob
  include Sidekiq::Job

  def perform(*args)
    ParticipantMailer.workshop_application_received_email(
      args[0]['workshop_id'],
      args[0]['participant_id']
    )
  end
end
