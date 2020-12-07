class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :momories

  validates :nickname, presence: true, 
                       length: {maximum: 8}
  validates :birthday, presence: true
end
