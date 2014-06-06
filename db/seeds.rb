User.delete_all
jack = User.create(:username => "jack", :password => "golf", :name => "Jack Henry")
kevin = User.create(:username => "kevin", :password => "wedge", :name => "Kevin Johnson")
matt = User.create(:username => "matt", :password => "sawgrass", :name => "Matt Kuchar")
bubba = User.create(:username => "bubba", :password => "mullet", :name => "Bubba Watson")
tiger = User.create(:username => "tiger", :password => "lindseyvonn", :name => "Tiger Woods")
greg = User.create(:username => "greg", :password => "shark", :name => "Greg Norman")


Video.delete_all
mk = Video.create(:title => "Kuchar Swing", :image_url => "https://i1.ytimg.com/vi/qozX7GdWQTA/mqdefault.jpg", :video_url => "//www.youtube.com/embed/qozX7GdWQTA?rel=0", :user_id => matt["id"], :swing_issues => "Help me with my hooks, blocks, and thin shots!")
bw = Video.create(:title => "Bubba Swing", :image_url => "https://i1.ytimg.com/vi/kxzKwHBpMjY/mqdefault.jpg", :video_url => "//www.youtube.com/embed/kxzKwHBpMjY?rel=0", :user_id => bubba["id"], :swing_issues => "I like to play a fade, but it sometimes turns into a big slice.  What can I do to fix this?")

Tip.delete_all
jh = Tip.create(:user_id => jack.id, :video_id => mk.id, :content => "Matt, nice swing overall, but it looksl like your swing plane may be a little flat.  This can cause the club to get trapped behind you, leading to big hooks or blocks.  It also creates a sweeping motion that can lead to thin shots.  Work on getting your hands above your right shoulder at the top of your swing.  From there, just drop the club into the slot and rotate your body through impact.")
kj = Tip.create(:user_id => kevin.id, :video_id => bw.id, :content => "Bubba, in your video, your stance is pretty open. I would work on setting up more squarely to your target line and that should eliminate the big slices")

Rating.delete_all
Rating.create(:tip_id => jh.id, :user_id => tiger.id, :rating => 5)
Rating.create(:tip_id => kj.id, :user_id => greg.id, :rating => 4)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
