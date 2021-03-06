class Sharesesh < ApplicationRecord
  belongs_to :user

  validates :when, presence: true
  validates :where, presence: true
  validates :subject, presence: true
  validates :subject, presence: true, length: {maximum: 30}

  has_attached_file :image, styles: {card: "334x189#", cardshow: "710x402#"}, default_url: ->(attachment) { ActionController::Base.helpers.image_path('missing.png', digest: false) }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end