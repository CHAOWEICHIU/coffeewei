class Order < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	belongs_to :user
	validates_associated :comments

	# scope :recent, -> {order where("orders.created_at > ?", 30.days.ago)}
 #  	scope :limited, -> {limit(5)}
end
