class FavoriteMailer < ApplicationMailer
	default from: "webdevelopmentlyspeaking+postenvy@gmail.com"

	def new_comment(user, post, comment)
		headers["Message-ID"] = "<comments/#{comment.id}@mysterious-hollows-63236.herokuapp.com>"
		headers["In-Reply-To"] = "<post/#{post.id}@mysterious-hollows-63236.herokuapp.com>"
		headers["References"] = "<post/#{post.id}@mysterious-hollows-63236.herokuapp.com>"

		@user = user
		@post = post
		@comment = comment

		mail(to: user.email, subject: "New comment on #{post.title}")
	end
end
