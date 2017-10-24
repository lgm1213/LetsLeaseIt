module UsersHelper
  def gravatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase"http://gravatar.com/avatar/#{gravatar_id}.png"
    default_image ="http://i0.kym-cdn.com/photos/images/newsfeed/000/176/107/business-cat.jpg"
  end
end
