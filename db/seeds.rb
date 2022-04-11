User.destroy_all
u1 = User.create :email => 'j@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'e@gmail.com', :password => 'chicken'
puts "#{User.count} users"
