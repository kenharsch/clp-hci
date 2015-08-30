class ShowName < ActiveRecord::Base
	belongs_to :user
	before_save :set_name

	def set_name
		if self.real_name?
			self.name = self.user.name
		else
			self.name = self.user.nickname
		end
	end
end
