class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :completed_routes
  has_many :routes, through: :completed_routes
  has_many :splits, through: :completed_routes

  include BCrypt

   def password
     @password ||= Password.new(password_hash)
   end

   def password=(pass)
     @entered_password = pass
     @password = Password.create(pass)
     self.password_hash = @password
   end

   def self.authenticate(email, plain_text_password)
     user = User.find_by_email(email)
     return user if user && (user.password == plain_text_password)
     nil # return nil if invalid email or wrong password
   end

end
