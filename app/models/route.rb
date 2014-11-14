class Route < ActiveRecord::Base
  # Remember to create a migration!
  has_many :completed_routes
  has_many :users, through: :completed_routes
end
