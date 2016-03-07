class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders     


  # scope :recent, -> {order where("orders.created_at > ?", 30.days.ago)}
  # scope :limited, -> {limit(5)}
  
end
