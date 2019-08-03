class Author

  attr_accessor :name
  attr_reader :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end
  
  def songs
    Song.all.select{|x| x.artist == self}
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
  end

 def self.post_count
    Posts.all.count
  end

end
