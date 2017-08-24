class Boat < ApplicationRecord
  has_many :jobs
  belongs_to :user
  validates :name, presence: true, uniqueness: true
end
