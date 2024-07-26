class Player < ApplicationRecord
  belongs_to :team
  has_many :matches, through: :team

enum role: { allrounder: 'allrounder', bowler: 'bowler', batsman: 'batsman' }

validates :name, presence: true
validates :age, presence: true
validates :position, presence: true
validates :team_id, presence: true
validates :role, presence: true
end
