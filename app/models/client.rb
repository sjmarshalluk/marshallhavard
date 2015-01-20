class Client < ActiveRecord::Base

	has_and_belongs_to_many :guides

	validates :title, presence: true
	validates :headline, presence: true
	validates :intro, presence: true
	validates :help_intro, presence: true
	validates :advice_intro, presence: true


end
