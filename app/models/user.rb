class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation, :admin, :as => :creator

  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
    Authlogic::CryptoProviders::BCrypt.cost = 12
  end
end
