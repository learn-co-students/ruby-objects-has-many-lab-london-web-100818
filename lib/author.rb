class Author

  attr_accessor :name

  def initialize(name)
      @name = name
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end

  def self.post_count
    Post.all.length
  end


end

# Author
#   #new
#     is initialized with a name (FAILED - 1)
#   #name
#     has an attr_accessor for name (FAILED - 2)
#   #posts
#     has many posts (FAILED - 3)
#   #add_post
#     takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 4)
#   #add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 5)
#   .post_count
#     is a class method that returns the total number of posts associated to all existing authors (FAILED - 6)
