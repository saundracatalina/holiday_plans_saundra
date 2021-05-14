class Manager < ApplicationRecord
  has_many :employees
  validates_presence_of :name
end
