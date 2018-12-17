class List < ApplicationRecord
  has_many :lists
  validates :type, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
