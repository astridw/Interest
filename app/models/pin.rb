class Pin < ActiveRecord::Base
  validates  :photo, :notes, presence: true
  mount_uploader :photo, PhotoUploader

  paginates_per 1000

  include PgSearch
  pg_search_scope :search,
  against: [:notes],
  using: {
    tsearch: {dictionary: "english"}
  }

  belongs_to :user
end
