class User < ActiveRecord::Base
  has_many :goals
  def password=(unencrypted_password)
    @password = unencrypted_password
    self.password_digest = BCrypt::Password.create(unencrypted_password)
  end
end
