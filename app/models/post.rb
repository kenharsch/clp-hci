class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :evaluations

	validates :problemID, presence: { :message => "You must choose an assignment tag."}
end
