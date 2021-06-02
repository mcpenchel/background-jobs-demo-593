class FakeJob < ApplicationJob
  queue_as :default

  # In Heroku, max waiting time for the server is 30s

  # Sacred method name
  # By default, this method generates perform_now and perform_later!
  def perform
    # Do something later
    puts "Starting to do something which takes time..."
    sleep(5)
    puts "Finished my time-consuming process!"
  end
end
