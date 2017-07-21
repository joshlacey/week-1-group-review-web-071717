# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require 'pry'

class User

  attr_accessor :name



  def initialize(name)
    @name = name
    #@photos = []
  end

  def photos
    Photo.all
  end



end

class Photo

  attr_accessor :user, :comments

  @@all = []
  def initialize
    @@all << self
    @comments = []
    #user.photos << self
  end

  def self.all
    @@all
  end

  def make_comment(comment)
    @comments << Comment.new(comment)
  end


end

class Comment

  attr_accessor :photo, :comment
  @@all_comments = []

  def initialize(comment)
    #photo.comments << self
    @comment = comment
    @@all_comments << self
  end

  def self.all
    @@all_comments
  end

end

binding.pry

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo = Photo.new
user = User.new("Matt")
photo.user = user
photo.user.name

photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
