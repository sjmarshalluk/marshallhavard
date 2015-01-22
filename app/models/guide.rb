class Guide < ActiveRecord::Base



	def slug
	    title.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_and_belongs_to_many :clients

	accepts_nested_attributes_for :clients


	scope :starting_out, -> { where(starting_out: true) }


end
