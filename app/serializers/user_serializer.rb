class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :name
  has_many :fav_beaches

end
