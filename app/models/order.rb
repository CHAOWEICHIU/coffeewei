class Order < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	belongs_to :user
	belongs_to :reports
	validates_associated :comments

	def levelup
		self.visibility += 1
		self.save
	end 
	def leveldown
		self.visibility -= 1
		self.save
	end

	def self.find_menu_price(comment_menu_id)
		@menus = Menu.all 
		
	end

end
