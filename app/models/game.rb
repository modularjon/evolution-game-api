class Game < ActiveRecord::Base
  belongs_to :user, inverse_of: :games
  belongs_to :parent_taxon, inverse_of: :games
end
