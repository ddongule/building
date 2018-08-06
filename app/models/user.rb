class User < ApplicationRecord
  rolify
  # include Authority::UserAbilities
  has_many :orders
  after_create :set_default_role, if: Proc.new { User.count > 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  
  after_create :set_default_role

  private

  def set_default_role
    if self.roles.blank?
      add_role :user
    end
  end


  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first
    
    unless user
      password = Devise.friendly_token[0,20]
      user = User.create(name: data["name"], email: data["email"],
        password: password, password_confirmation: password
      )
    end
   user
  end

  # def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
  #     data = access_token.info
  #     user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
  #     if user
  #       return user
  #     else
  #       registered_user = User.where(:email => access_token.info.email).first
  #       if registered_user
  #         return registered_user
  #       else
  #         user = User.create(name: data["name"],
  #           provider:access_token.provider,
  #           email: data["email"],
  #           uid: access_token.uid ,
  #           password: Devise.friendly_token[0,20]
  #         )
  #       end
  #   end
  # end

end
