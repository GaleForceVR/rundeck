require 'faker'

# User.delete_all
# Event.delete_all

# users = 100.times.map do
users = 10.times.map do

  User.create!( :first_name     => Faker::Name.first_name,
                :last_name      => Faker::Name.last_name,
                :username       => Faker::Internet.user_name,
                :email          => Faker::Internet.email,
                :password_hash  => 'password' )
end

routes = 10.times.map do

  Route.create!(  location: Faker::Address.street_name  )

end

completed_routes = 15.times.map do

  CompletedRoute.create!(   user_id:     (1..10).map { |x| x }.sample,
                            route_id:    (1..10).map { |x| x }.sample,
                            # Time.new(2014,11,14,7,30,0, "-05:00")
                            # Time.now.strftime("%Y-%m-%d %H:%M:%S")
                            time_of_day:  "2014-11-14 07:30:25",
                            date:         "2014-11-14",
                            temperature:  75,
                            wind:         "NE-30"  )
end

time = (42000..54000).to_a.sample
route_id = (1..15).to_a.sample

splits = 50.times.map do

  Split.create!(  completed_route_id:   route_id,
                  distance:             1,
                  time:                 time )

end


