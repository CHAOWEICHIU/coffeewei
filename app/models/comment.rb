class Comment < ActiveRecord::Base
  belongs_to :order
  has_many :menus
end
