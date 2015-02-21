class PostsController < AuthenticatedController
  def new
    @post = Post.new
  end
end
