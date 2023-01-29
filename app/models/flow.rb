class Flow < ApplicationRecord
  belongs_to :category

  scope :desc, -> { order(date: :desc) }
end
