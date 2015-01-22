class Question < ActiveRecord::Base


	def slug
	    question.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_and_belongs_to_many :clients
	
end
