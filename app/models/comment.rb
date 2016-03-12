class Comment < ActiveRecord::Base
  	belongs_to :order
  	has_one :menu
	# validates :qty, presence: true, numericality: { only_integer: true }

	validates_numericality_of :qty, :only_integer => true, :allow_nil => false, 
    :greater_than_or_equal_to => 1
    # :message => "can only be whole number between 1 and 50."

    
end