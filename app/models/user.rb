class User < ActiveRecord::Base
  has_one :profile, foreign_key: :id

  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.password_digest = BCrypt::Password.create(raw_password)
    else
      self.password_digest = nil
    end
  end
end
