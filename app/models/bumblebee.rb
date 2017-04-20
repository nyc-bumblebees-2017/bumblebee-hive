class Bumblebee < ActiveRecord::Base
  # Remember to create a migration!
  validates :job, presence: true

  def password
    BCrypt::Password.new(password_hash)
  end

  def password=(password)
    self.password_hash = BCrypt::Password.create(password)
  end
end
