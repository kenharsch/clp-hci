class PostUpvote < ActiveRecord::Base
	after_save :increment_upvotes
	after_save :notify


	belongs_to :user
	belongs_to :post

	def increment_upvotes
		@post = self.post
		current_upvotes = @post.upvotes
		@post.update(upvotes: current_upvotes + 1)
	end

	def notify
		Notification.create(message: self.user.nickname.to_s + ' liked your post.', user_notified: self.post.user_id, link: '/'+'posts/'+self.post_id.to_s)
	end
	
end
