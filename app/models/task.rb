class Task < ActiveRecord::Base
  belongs_to :provider
  belongs_to :user
end
