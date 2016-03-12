class Order < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	belongs_to :user
	validates_associated :comments

	def levelup
		self.visibility += 1
		self.save
	end 
	def leveldown
		self.visibility -= 1
		self.save
	end

	# include ApplicationHelper
	
end
