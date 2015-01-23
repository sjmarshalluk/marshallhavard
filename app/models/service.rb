class Service < ActiveRecord::Base

	def slug
	    name.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_many :client_service
	has_many :clients, :through => :client_service
	
end
