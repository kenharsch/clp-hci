class CommentUpvote < ActiveRecord::Base
	after_save :increment_upvotes
	after_save :notify

	belongs_to :user
	belongs_to :comment

	def increment_upvotes
		@comment = self.comment
		current_upvotes = @comment.upvotes
		@comment.update(upvotes: current_upvotes + 1)
	end

	def notify
		Notification.create(message: self.user.nickname.to_s + ' liked your comment.', user_notified: self.comment.user_id, link: '/'+'posts/'+self.comment.post.id.to_s)
	end
end