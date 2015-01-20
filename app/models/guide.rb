class Guide < ActiveRecord::Base

	has_and_belongs_to_many :clients


	scope :starting_out, -> { where(starting_out: true) }


end
