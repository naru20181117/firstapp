class Card < ApplicationRecord
  belongs_to :list
  validates :title, length: { in: 1..255 }
  validates :memo, length: { maximum: 500 }
end
