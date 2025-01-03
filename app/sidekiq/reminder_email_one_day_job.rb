class ReminderEmailOneDayJob
  include Sidekiq::Job
  # sidekiq_options queue: :mailer

  def perform(*args)
    ParticipantMailer.reminder_email_one_day(
      args[0]['workshop_id'],
      args[0]['participant_id']
    )
  end
end