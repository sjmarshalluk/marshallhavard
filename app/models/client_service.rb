class ClientService < ActiveRecord::Base

	belongs_to :service
	belongs_to :client

end
