class Guide < ActiveRecord::Base



	def slug
	    title.downcase.gsub(" ", "-")  
	end

	def to_param
		"#{id}-#{slug}"
	end

	has_many :helpsheet
	has_many :clients, :through => :helpsheet

  has_many :service_guide
  has_many :services, :through => :service_guide

	validates :summary, length: {maximum: 60}

scope :next, lambda {|id| where("id > ?",id).order("id ASC") } # this is the default ordering for AR
    scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }

    def next
      Guide.next(self.id).first
    end

    def previous
      Guide.previous(self.id).first
    end

end
 