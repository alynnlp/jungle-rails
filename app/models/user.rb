class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, :password_confirmation, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }

#this method is called in the sessions_controller, this method is created in the Class User
  def self.authenticate_with_credentials(email, password)
    email = email.strip
    user = User.where("lower(email) = ?", email.downcase).first
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end
