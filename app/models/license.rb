class License < ApplicationRecord
  validates :license_key, length: { maximum: 10 }

  belongs_to :offer
end
