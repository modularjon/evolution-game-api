class AddGameSolvedToGames < ActiveRecord::Migration
  def change
    add_column :games, :game_solved, :boolean
  end
end
