Artist.delete_all
Painting.delete_all

art1 = Artist.create(:name => 'Vincent van Gogh', :nationality => 'Dutch', :dob => '3/2/1795', :image => 'http://cdn.theatlantic.com/static/mt/assets/science/vangogh_photo.jpg')
art2 = Artist.create(:name => 'Pablo Picasso', :nationality => 'Spain', :dob => '5/3/1686', :image => 'http://cdn.enjoyourholiday.com/wp-content/uploads/2012/10/Picasso-portrait.jpg')
art3 = Artist.create(:name => 'Salvador Dali', :nationality => 'Spain', :dob => '4/9/1583', :image => 'http://www.biography.com/imported/images/Biography/Images/Profiles/D/Salvador-Dali-40389-2-402.jpg')
art4 = Artist.create(:name => 'Claude Monet', :nationality => 'French', :dob => '3/9/1275', :image => 'http://www.biography.com/imported/images/Biography/Images/Profiles/M/Claude-Monet-WC-9411771-2-402.jpg')
art5 = Artist.create(:name => 'Henri Matisse', :nationality => 'French', :dob => '8/3/1376', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Portrait_of_Henri_Matisse_1933_May_20.jpg/220px-Portrait_of_Henri_Matisse_1933_May_20.jpg')

mus1 = Museum.create(:name => 'Louvre', :city => 'Paris')
mus2 = Museum.create(:name => 'Museum of Modern Art (MOMA)', :city => 'New York')

Painting.create(:title => 'Self Portrait', :year => '1245', :style => 'oil',  :image => 'http://www.artcyclopedia.org/art/van-gogh-self.jpg', :artist => art1, :museum => mus1)
Painting.create(:title => 'A Woman', :year => '1656', :style => 'canvas', :image => 'http://www.arttherapyblog.com/uimages/2010/10/picasso_woman_b.jpg', :artist => art3, :museum => mus2)
Painting.create(:title => 'Butterfly Ship', :year => '1837', :style => 'water colors', :image => 'http://www.idealnetworker.com/home/idealnet/public.html/wp-content/uploads/2011/04/art-salvador-dali.jpg', :artist => art1, :museum => mus1)
Painting.create(:title => 'Twilight', :year => '1488', :style => 'fabric', :image => 'http://framingpainting.com/UploadPic/Claude%20Monet/big/Venice%20Twilight.jpg', :artist => art4, :museum => mus2)
Painting.create(:title => 'Lydia', :year => '1734', :style => 'oil', :image => 'http://www.arthermitage.org/Henri-Matisse/Portrait-of-Lydia-Delectorskaya.jpg', :artist => art4, :museum => mus1)


puts "Paintings and Artist Added"