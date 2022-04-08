User.destroy_all
u1 = User.create :email => 'jaque@elizandro.com.br', :password => 'chicken', :admin => true
u2 = User.create :email => 'elizandro.jaque@gmail.com', :password => 'chicken'
puts "#{User.count} users"
