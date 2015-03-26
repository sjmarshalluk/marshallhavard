class Guide < ActiveRecord::Base



	def slug
	    title.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_many :helpsheet
	has_many :clients, :through => :helpsheet

	validates :summary, length: {maximum: 60}



end
