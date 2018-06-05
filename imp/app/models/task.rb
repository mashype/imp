class Task < ActiveRecord::Base
  belongs_to :provider
  belongs_to :user
  belongs_to :priority
  belongs_to :disposition

  has_many :notes, dependent: :destroy
  accepts_nested_attributes_for :notes, reject_if: :all_blank, allow_destroy: true

  default_scope { order(due_date: :asc, priority_id: :asc) }

  

end
