require 'faker'

User.delete_all
Event.delete_all

# users = 100.times.map do
users = 10.times.map do

  User.create!( :first_name     => Faker::Name.first_name,
                :last_name      => Faker::Name.last_name,
                :username       => Faker::Name.user_name,
                :email          => Faker::Internet.email,
                :password_hash  => 'password' )
end

routes = 10.times.map do

  Route.create!(  location: Faker::Address.street_name  ) 

end

completed_routes = 15.times.map do

  CompletedRoute.create!(   users_id: (1..10).map { |x| x }.sample
                            routes_id: (1..10).map { |x| x }.sample
                            time_of_day:  