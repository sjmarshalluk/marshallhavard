class Helpsheet < ActiveRecord::Base

	belongs_to :guide
	belongs_to :client

end
