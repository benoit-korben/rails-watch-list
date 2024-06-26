class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :lists, through: :bookmarks

  validates :overview, presence: true
  validates :title, uniqueness: true, presence: true

end
