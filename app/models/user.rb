class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  before_create :encrypt_password

  def self.login(options)
    if options[:email] && options[:password]
      find_by(email: options[:email],
              password: Digest::SHA1.hexdigest("x" + options[:password] + "y"))
    end
  end

  private
  def encrypt_password
    self.password = bigbang(self.password)
  end

  def bigbang(string)
    string = "x" + string + "y"
    Digest::SHA1.hexdigest(string)
  end
end
