class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
      end
    end
  end

  def find_contacts
	client = LinkedIn::Client.new
	client.authorize_from_access("78tgub92xvl8vw", "DugHl3dysh67Y4wn")

	client.profile
  end

end
