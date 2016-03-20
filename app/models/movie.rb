class Movie < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :director, presence: true
  validates :year, presence: true
  validates :user_id, presence: true

  paginates_per 15
end

