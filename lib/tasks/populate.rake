namespace :populate do
	desc 'populate the data'

	task :posts => :environment do
		10.times do |i|
			user = User.create!(name: "user_#{i}", email: "user_email_#{i}@mail.com", password: "123456", password_confirmation: "123456")
			10.times do
				post = 	user.posts.create!(
							title: "This is the title belongs to the user #{user.name}.",
							body: "This is the body of the blog belongs to the user #{user.name}. You can add more sentences to the body of the posts."
						)
			end
		end
	end
end