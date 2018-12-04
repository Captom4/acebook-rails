module PostsHelper
  def post_date(post)
    if post.updated_at.equal?(post.created_at)
      return post.created_at
    else
      return post.updated_at
    end
  end

  def created_by(post)
    post.user.email
  end

  def owner?(user)
    user == current_user
  end
end
