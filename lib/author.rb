class Author

  attr_accessor :name, :posts

    @@all = []

   def initialize(name)
     @name = name
     @@all << self
     @posts = []
   end

   def add_post(post)
     post.author = self
     @posts << post
   end

   def add_post_by_title(name)
     new_post = Post.new(name)
     add_post(new_post)
   end

   def self.post_count
     Post.all.length
   end



 end
