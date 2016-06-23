class AddGameSolvedDefaultAsFalseToGames < ActiveRecord::Migration
  def change
    change_column_default :games, :game_solved, false
  end
end
