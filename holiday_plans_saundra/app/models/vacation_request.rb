class VacationRequest < ApplicationRecord
  belongs_to :employee
  validates_presence_of :status,
                        :start_date,
                        :end_date
  # no validation for resolved by--it can be null if pending
end
