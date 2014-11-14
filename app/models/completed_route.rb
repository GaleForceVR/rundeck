class CompletedRoute < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to  :user
  belongs_to  :route
  has_many    :splits
end
