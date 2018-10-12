class Post
  attr_accessor :title, :author

  @@all = []
  @@posts = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def posts
    @@posts
  end

  def self.all
    @@all
  end

  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end

end
