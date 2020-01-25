class User < ApplicationRecord
  # a user can have more than 2 lists
  # then when you delete the user, the lists will be deleted
  has_many :lists, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # 存在し、かつ20文字までを許可
  validates :name, presence: true, length: { maximum: 20 }
end
