module UsersHelper
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    default_url = "https://i.imgflip.com/1y6yeq.jpg"
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&r=g&d=#{CGI.escape(default_url)}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar img-circle")
  end

  def company_info
  	company_id = @user.company_id
  	@company = Company.find(company_id)
  	return @company
  end
  
  def user_roles
    [
      ['Property Manager', 'property_manager'],
      ['Regional Manager', 'regional_manager'],
      ['Account Manager', 'account_manager'],
      ['Realtor', 'realtor'],
      ['Leasing Consultant', 'leasing_consultant'],
      ['Renter', 'renter'],
      ['Admin', 'admin'],
      ['Super Admin', 'super_admin'],
    ]
  end

  def user_company(user)
    return Company.find(user.company_id).name rescue nil
  end
end
