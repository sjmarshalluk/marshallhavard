class ServiceGuide < ActiveRecord::Base

  belongs_to :guide
	belongs_to :service
	
end
