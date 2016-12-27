class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  has_many :privseshes
  has_many :shareseshes

  validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :name, presence: true
end
