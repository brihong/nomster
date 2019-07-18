class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, 
    message: " is too short (minimum is %{count} characters required)" }
  validates :address, presence: true
  validates :description, presence: true
end
