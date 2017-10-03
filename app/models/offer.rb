class Offer < ApplicationRecord
  validates :title, :decription, presence: true
  validates :title, :decription, length: { maximum: 20 }
  has_one :license, dependent: :destroy
  accepts_nested_attributes_for :license
end
