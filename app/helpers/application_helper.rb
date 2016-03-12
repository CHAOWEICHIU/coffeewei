module ApplicationHelper
	def start_end(object, date_start, date_end)
  		@objects = object.all.where(:created_at => date_start.to_time..date_end.to_time)
  	end
end

