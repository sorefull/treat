class Offer < ApplicationRecord
  validates :title, :decription, presence: true
  validates :title, :decription, length: { maximum: 20 }
  has_one :license, dependent: :destroy

  accepts_nested_attributes_for :license, :allow_destroy => true
  before_validation :mark_tour_dates_for_destruction

  def mark_tour_dates_for_destruction
    license.mark_for_destruction if license.license_key.blank?
  end
end
