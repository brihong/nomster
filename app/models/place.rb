class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy

  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: { minimum: 3, 
    message: " is too short (minimum is %{count} characters required)" }
  validates :address, presence: true
  validates :description, presence: true
end
