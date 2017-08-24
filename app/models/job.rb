class Job < ApplicationRecord
  has_many :boats
  validates :name, presence: true, uniqueness: true
  validates_numericality_of :cost, :only_integer => true, :greater_than_or_equal_to => 1000
  validates :description, length: { minimum: 50 }
end
