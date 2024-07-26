class Match < ApplicationRecord
    belongs_to :home_team, class_name: 'Team'
    belongs_to :away_team, class_name: 'Team'
    has_many :players, through: [:home_team, :away_team]
end
