class Sponsor < ActiveRecord::Base	

	has_many :tasks, as: :task_duty
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true

	has_many :sponsormatches
	accepts_nested_attributes_for :sponsormatches

	has_many :providers, :through => :sponsormatches
	accepts_nested_attributes_for :providers

end
