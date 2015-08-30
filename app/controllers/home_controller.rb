class HomeController < ApplicationController
  def index
  	@posts = Post.all
  	@users = User.all
  	@assignment = Assignment.where("due >= ?", Time.zone.now).sort_by{|d| d[:due]}.first
  	@assignment_link = '/'+'assignments/'+ @assignment.id.to_s
  	@trending = @posts.sort_by{|p| p[:updated_at]}.last
  	@trending_link = '/'+'posts/'+ @trending.id.to_s
  	@notifications = Notification.where(user_notified: [0, current_user.id]).order('created_at DESC')
  	@gold_star_posts = Array.new
  	@gold_stars = PostUpvote.joins(:user).where(:users => {:admin => true})
  	@gold_stars.each do |gs|
  		@gold_star_posts << gs.post
  	end
  	@gold_star_posts.sort_by{|t| t[:created_at]}
  end
end
