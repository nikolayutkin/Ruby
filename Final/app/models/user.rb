class User < ActiveRecord::Base
validates :login, uniqueness: true
validates :login, presence: true
validates :password, presence: true

def self.authenticate(log, pass)
  user = find_by_login(log)
  return nil if user.nil?
  return user if user.password == pass
end

end

