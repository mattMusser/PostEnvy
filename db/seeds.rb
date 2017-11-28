require 'random_data'

# Create Users
5.times do
	User.create!(
		name: 			RandomData.random_name,
		email: 			RandomData.random_email,
		password: 	RandomData.random_sentence
	)
end
users = User.all

# Create Topics
15.times do
	Topic.create!(
		name:        RandomData.random_sentence,
		description: RandomData.random_paragraph
	)
end
topics = Topic.all

# Create Posts
50.times do
	post = Post.create!(
		user: 	users.sample,
		topic: 	topics.sample,
		title: 	RandomData.random_sentence,
		body: 	RandomData.random_paragraph
	)
	post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
	rand(1..5).times { post.votes.create!(value: [-1,1].sample, user: users.sample) }
end
posts = Post.all

# Create Comments
100.times do
	Comment.create!(
		user: 	users.sample,
		post: 	posts.sample,
		body: 	RandomData.random_paragraph
	)
end

# Create an admin user
admin = User.find_or_create_by!(email: 'admin@example.com') do |user|
	user.name = 		'Admin User'
	user.password = 'helloworld'
	user.role = 		'admin'
end

# Create a member
member = User.find_or_create_by!(email: 'member@example.com') do |user|
	name = 		       'Member User'
	password = 			 'helloworld'
	role =					 'member'
end

puts "Seed finished"
puts "#{User.count} total users"
puts "#{Topic.count} total topics"
puts "#{Post.count} total posts"
puts "#{Comment.count} total comments"
puts "#{Vote.count} total votes"