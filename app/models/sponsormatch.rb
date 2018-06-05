class Sponsormatch < ActiveRecord::Base

	belongs_to :sponsor
	belongs_to :provider

end
