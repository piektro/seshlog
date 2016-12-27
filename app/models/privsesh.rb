class Privsesh < ApplicationRecord
  belongs_to :user

  validates :note, length: {maximum: 100}
end
