class License < ApplicationRecord
  validates :license_key, length: { maximum: 10 }
  validates :offer, presence: true
  belongs_to :offer
end
