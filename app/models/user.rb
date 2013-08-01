class User < ActiveRecord::Base
  attr_accessible :emailid, :firstname, :lastname
end
