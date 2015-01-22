class Client < ActiveRecord::Base


	def slug
	    title.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_and_belongs_to_many :guides
	has_and_belongs_to_many :questions
	has_and_belongs_to_many :services

	accepts_nested_attributes_for :guides

	validates :title, presence: true
	validates :headline, presence: true
	validates :intro, presence: true
	validates :help_intro, presence: true
	validates :advice_intro, presence: true


end
