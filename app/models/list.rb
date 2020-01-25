class List < ApplicationRecord
  # this is opposite to the user.rb
  belongs_to :user
  # then the list can have more than 2 cards
  has_many :cards, dependent: :destroy
  validates :title, length: { in: 1..255 }
end
