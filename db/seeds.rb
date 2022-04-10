User.destroy_all
u1 = User.create :email => 'j@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'e@gmail.com', :password => 'chicken'
puts "#{User.count} users"

Movie.destroy_all
m1 = Movie.create :title => 'The Lego Movie', :year => '2014', :image => 'https://imdb-api.com/images/original/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@._V1_Ratio0.6751_AL_.jpg', :plot => 'The LEGO Movie is a 3D animated film which follows lead character, Emmet a completely ordinary LEGO mini-figure who is identified as the most \"extraordinary person\" and the key to saving the Lego universe. Emmet and his friends go on an epic journey to stop the evil tyrant, Lord Business.', :director => 'Christopher Miller, Phil Lord', :genres => 'Animation, Action, Adventure', :imdbid => 'tt1490017'
puts "#{Movie.count} movies"
