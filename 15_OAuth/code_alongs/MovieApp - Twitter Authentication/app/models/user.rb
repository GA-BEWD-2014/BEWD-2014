class User < ActiveRecord::Base
  has_many :reviews
  def self.from_omniauth(auth_hash)
   where(auth_hash.slice(:provider, :uid)).first_or_initialize.tap do |user|   
      user.uid = auth_hash.uid                                                     
      user.provider = auth_hash.provider                                           
      user.username = auth_hash.info.nickname                                      
      user.oauth_token = auth_hash.credentials.token                               
      user.oauth_secret = auth_hash.credentials.secret                             
      user.save                                                                    
    end                                                                            
  end
end
