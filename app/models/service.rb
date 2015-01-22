class Service < ActiveRecord::Base

	def slug
	    name.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_and_belongs_to_many :clients
	
end
