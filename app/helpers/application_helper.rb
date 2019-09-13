module ApplicationHelper
  def avatar_url(user)
      gravatar_id = Digest::MD5::hexdigest(user.username).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=64"
  end
end
