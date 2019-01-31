# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :username, uniqueness: true
  validates :password_digest, presence: {message: "Password can't be blank"}, length: {minimum: 6, allow_nil: true}
  validates :password, length: {minimum: 6, allow_nil: true}
  before_validation :ensure_session_token

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def password
    @password
  end

  def password=(pw)
    @password = pw
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.find_by_credentials(un, pw)
    user = User.find_by(username: un)
    return user if user.is_password?(pw)
    nil
  end

  def is_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end
end
