class List < ApplicationRecord
  has_many :lists
  validates :type_of, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
