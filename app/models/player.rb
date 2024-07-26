class Player < ApplicationRecord
  belongs_to :team
  has_many :matches, through: :team

enum role: { allrounder: 'allrounder', bowler: 'bowler', batsman: 'batsman' }

validates :name, presence: true
validates :age, presence: true
validates :position, presence: true
validates :team_id, presence: true
validates :role, presence: true

before_destroy :check_if_captain
  after_save :update_team_player_count
  before_validation :validate_single_captain_per_team, on: :create

  private

  def check_if_captain
    throw(:abort) if self.captain?
  end

  def update_team_player_count
    team.update(player_count: team.players.count) if team.present?
  end

  def validate_single_captain_per_team
    if team.present? && team.players.where(captain: true).count > 0
      errors.add(:base, "A team can only have one captain")
    end
  end
end
