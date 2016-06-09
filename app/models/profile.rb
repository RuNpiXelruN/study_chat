class Profile < ApplicationRecord
  belongs_to :user
  has_one :location, as: :locationable, dependent: :destroy
  accepts_nested_attributes_for :location
  mount_uploader :image, ImageUploader
end
