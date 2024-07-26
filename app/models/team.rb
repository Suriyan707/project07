class Team < ApplicationRecord
  has_many :players
  has_many :matches

  def player_count
    players.count
  end

validates :name, presence: true, uniqueness: true
validates :country, presence: true
validates :player_count, presence: true
end
