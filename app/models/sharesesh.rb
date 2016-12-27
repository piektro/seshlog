class Sharesesh < ApplicationRecord
  belongs_to :user

  validates :when, presence: true
  validates :where, presence: true
  validates :subject, presence: true
  validates :yoursesh, presence: true
  	
end
