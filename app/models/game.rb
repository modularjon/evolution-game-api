class Game < ActiveRecord::Base
  belongs_to :user, inverse_of: :games
end
