class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :lists, dependent: :destroy
  # 存在し、かつ20文字までを許可
  validates :name, presence: true, length: { maximum: 20 }
end
