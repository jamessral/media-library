class Show < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :season, presence: true
  validates :year, presence: true
  validates :user_id, presence: true
end
