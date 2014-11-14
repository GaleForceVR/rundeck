class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :completed_routes
  has_many :routes, through: :completed_routes
  has_many :splits, through: :completed_routes
end
