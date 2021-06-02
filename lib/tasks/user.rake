namespace :user do
  desc "We will enrich allll the users with Clearbit API"
  task update_all: :environment do
    User.all.each do |user|
      puts "Enriching user #{user.email}..."
      UserJob.perform_later(user)
      puts "Finished enriching that user!"
    end
  end
end
