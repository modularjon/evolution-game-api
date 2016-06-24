#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :games, inverse_of: :user
end
