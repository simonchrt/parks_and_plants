class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, :image_url, presence: true
  validates :name, uniqueness: true
end
