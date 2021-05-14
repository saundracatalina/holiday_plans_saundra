class Employee < ApplicationRecord
  belongs_to :manager
  has_many :vacation_requests
  validates_presence_of :name,
                        :vac_days_left
end
