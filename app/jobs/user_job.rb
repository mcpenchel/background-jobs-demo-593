class UserJob < ApplicationJob
  queue_as :default

  # def perform(serialized_user)
  #   user = GlobalID.find(serialized_user)

  #   puts "Go to Clearbit Enrichment API....."
  #   sleep(4)
  #   puts "Finished going there, your user was updated with new data!"
  # end

  def perform(user)
    puts "Go to Clearbit Enrichment API....."
    sleep(4)
    puts "Finished going there, your user was updated with new data!"
  end
end
