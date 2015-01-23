class Question < ActiveRecord::Base


	def slug
	    question.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_many :query
	has_many :clients, :through => :query


	
end
