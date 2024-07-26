class AddPlayerCountToTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :player_count, :integer
  end
end
