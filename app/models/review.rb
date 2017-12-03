class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  has_many :photos

  accepts_nested_attributes_for :photos
end
