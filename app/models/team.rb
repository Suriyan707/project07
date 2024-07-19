class Team < ApplicationRecord
    has_many :players

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :founded, presence: true
  validates :description, presence: true
end
