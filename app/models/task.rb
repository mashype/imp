class Task < ActiveRecord::Base
  belongs_to :provider
  belongs_to :user

  has_many :notes, dependent: :destroy
  accepts_nested_attributes_for :notes, reject_if: :all_blank, allow_destroy: true

end
