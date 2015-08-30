class PostUpvote < ActiveRecord::Base
	after_save :increment_upvotes


	belongs_to :user
	belongs_to :post

	def increment_upvotes
		@post = self.post
		current_upvotes = @post.upvotes
		@post.update(upvotes: current_upvotes + 1)
	end

	
end
