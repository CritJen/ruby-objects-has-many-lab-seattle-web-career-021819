class Author
  attr_reader :name
  attr_accessor :posts

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@posts << post
  end

  def add_post_by_title(title)
    new_title = Post.new(title)
    @posts << new_title
    @@posts << new_title
    new_title.author = self
  end

def self.post_count
  @@posts.length
end



end
