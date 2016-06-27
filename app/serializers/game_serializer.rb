class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_solved, :user_id, :parent_taxon
end
