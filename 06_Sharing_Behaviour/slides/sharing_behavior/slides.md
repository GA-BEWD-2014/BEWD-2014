# What's yours is mine

!SLIDE

# Sharing behavior

!SLIDE

# We've grown!
``` ruby
class ScienceSubteddit
  @@name = "Science"
  @@description = "Where we blow stuff up for fun"
  def self.welcome
    puts "Welcome to the #{@@name} Subteddit!"
    puts @@description
  end
end

class MoviesSubteddit
  @@name = "Movies"
  @@description = "Because the Matrix was awesome"
  def self.welcome
    puts "Welcome to the #{@@name} Subteddit!"
    puts @@description
  end
end

class SportsSubteddit
  @@name = "Sports"
  @@description = "We have big muscles and we run fast"
  def self.welcome
    puts "Welcome to the #{@@name} Subteddit!"
    puts @@description
  end
end

class RubySubteddit
  @@name = "Ruby"
  @@description = "Because Python Sucks"
  def self.welcome
    puts "Welcome to the #{@@name} Subteddit!"
    puts @@description
  end
end
```

!SLIDE
# Don't repeat yourself (DRY)
``` ruby
class Subteddit
  @@name = ""
  @@description = ""
  def self.welcome
    puts "Welcome to the #{@@name} Subteddit!"
    puts @@description
  end
end

class ScienceSubteddit < Subteddit
  @@name = "Science"
  @@description = "Where we blow stuff up for fun"
end

class MoviesSubteddit < Subteddit
  @@name = "Movies"
  @@description = "Because the Matrix was awesome"
end

class SportsSubteddit < Subteddit
  @@name = "Sports"
  @@description = "We have big muscles and we run fast"
end

class RubySubteddit < Subteddit
  @@name = "Ruby"
  @@description = "Because Python Sucks"
end
```

!SLIDE
# Where you'll see it...

``` ruby
class User < ActiveRecord::Base
end
```

!SLIDE
# Modules
## Another way to share behavior


!SLIDE
# More Growth!
## Stories
``` ruby
class Story
  attr_reader :title, :author, :upvotes

  def initialize(title, author)
    @title = title
    @author = author
    @upvotes = 1
  end

  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end
```

!SLIDE
# More Growth!
## Photos!
``` ruby
class Photo
  attr_reader :photographer, :resolution, :upvotes
  
  def initialize(photographer, resolution)
    @photographer = photographer
    @resolution = resolution
    @upvotes = 1
  end

  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end

```

!SLIDE
# More Growth!
## Video
``` ruby
class Video
  attr_reader :title, :genre

  def initialize(title, genre)
    @title = title
    @genre = genre
    @upvotes = 1
  end

  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end

```

!SLIDE
# More Growth!
## Posts!
``` ruby
class Post
  attr_reader :title, :categories

  def initialize(title, *categories)
    @title = title
    @categories = categories
    @upvotes = 1
  end

  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end
```

!SLIDE
# Inheritance won't work here
## not an 'Is a' relationship

!SLIDE
# Mixin!
``` ruby
module Upvotable
  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end

class Photo
  attr_reader :photographer, :resolution, :upvotes
  include Upvotable

  def initialize(photographer, resolution)
    @photographer = photographer
    @resolution = resolution
    @upvotes = 1
  end
end

class Story
  attr_reader :title, :author, :upvotes
  include Upvotable

  def initialize(title, author)
    @title = title
    @author = author
    @upvotes = 1
  end
end
```

!SLIDE
# Things are a bat to get weird
``` ruby
class Bat
  def fly!
    puts "So free.. and blind"
  end
end
```
``` ruby
# Somewhere else in your code
class Bat
  def made_of
    "wood"
  end
end
```
``` ruby
slugger = Bat.new
slugger.fly?!??!
```

!SLIDE
# Namespace it

``` ruby
module Animal
  class Bat
    def fly!
      puts "So free.. and blind"
    end
  end
end
Animal::Bat.new

module BaseballUtensils
  class Bat
    def made_of
      "wood"
    end
  end
end

BaseballUtensils::Bat.new
```
