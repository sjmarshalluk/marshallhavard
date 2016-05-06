class Client < ActiveRecord::Base


	def slug
	    title.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	
	has_many :helpsheet
	has_many :guides, :through => :helpsheet

	has_many :query
	has_many :questions, :through => :query

	has_many :client_service
	has_many :services, :through => :client_service



	validates :title, presence: true
	validates :headline, presence: true, length: {maximum: 40}
	validates :intro, presence: true
	validates :help_intro, presence: true
	validates :advice_intro, presence: true


end
