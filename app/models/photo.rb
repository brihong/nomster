class Photo < ApplicationRecord::Base
  belongs_to :user
  belongs_to :place

  mount_uploader :picture, PictureUploader
end
