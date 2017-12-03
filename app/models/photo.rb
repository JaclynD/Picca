class Photo < ActiveRecord::Base
  belongs_to :review
  belongs_to :restaurant
  belongs_to :user

  mount_uploader :image, ImageUploader
end
