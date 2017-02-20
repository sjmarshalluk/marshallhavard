class Service < ActiveRecord::Base

	def slug
	    name.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_many :client_service
	has_many :clients, :through => :client_service

  has_many :service_guide
  has_many :guides, :through => :service_guide

  validates :description, length: {maximum: 100}


	def self.get_previous_service(current_service)
        Service.where("services.id < ? ", current_service.id).order('created_at asc').last
    end

	def self.get_next_service(current_service)
        Service.where("services.id > ? ", current_service.id).order('created_at asc').first
    end


	 
end
