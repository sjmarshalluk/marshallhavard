class Query < ActiveRecord::Base

	belongs_to :question
	belongs_to :client
	
end
