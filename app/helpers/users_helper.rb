module UsersHelper
	def no_user_posts(user)
		@posts = user.posts.count

		if @posts == 0
			true
		end
	end

	def no_user_comments(user)
		@comments = user.comments.count

		if @comments == 0
			true
		end
	end

	def no_user_favorites(user)
		@favorties = user.favorites.count

		if @favorites == 0
			true
		end
	end
end
