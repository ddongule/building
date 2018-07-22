class User < ApplicationRecord
  rolify
  # include Authority::UserAbilities
  has_many :orders
  after_create :set_default_role, if: Proc.new { User.count > 1 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  after_create :set_default_role

  private

  def set_default_role
    if self.roles.blank?
      add_role :user
    end
  end
end
