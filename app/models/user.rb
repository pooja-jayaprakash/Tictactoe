class User < ActiveRecord::Base
  attr_accessible :email, :name, :num_login
end
