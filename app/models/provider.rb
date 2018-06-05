class Provider < ActiveRecord::Base
	has_many :tasks
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
	
	has_many :contacts
	accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

	has_many :locations
	accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true

	validates :org_name, presence: true
	
end
