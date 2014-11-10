class Pin < ActiveRecord::Base
  validates  :photo, :notes, presence: true
  mount_uploader :photo, PhotoUploader
end
