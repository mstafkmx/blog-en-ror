class User < ActiveRecord::Base
  attr_accessible :email, :encrypted_password, :is_admin, :name
end
