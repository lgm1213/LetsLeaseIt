module UsersHelper
	def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    default_url = "http://i0.kym-cdn.com/photos/images/newsfeed/000/176/107/business-cat.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
