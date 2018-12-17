class List < ApplicationRecord
  has_many :lists_items, dependent: :destroy
end
