class Movie < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :director, presence: true
  validates :year, presence: true
  validates :user_id, presence: true
end

