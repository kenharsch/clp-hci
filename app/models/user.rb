class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_one :membership
  has_one :group, :through => :membership
  has_many :evaluations
  has_many :visits
  has_many :comments
  has_one :partnership
  has_one :project, :through => :partnership
  has_one :show_name

  before_save :set_name

  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :name, :nickname, :email, :password, presence: true
	validates :name, uniqueness: true
	validates :nickname, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with:%r{\.(gif|jpg|png)\Z}i,
		message: 'must be url for GIF, JPG or PNG image.'
	}

  def set_name
    if self.show_name.real_name?
      self.show_name.name = self.user.name
    else
      self.show_name.name = self.user.nickname
    end
  end
  
end
