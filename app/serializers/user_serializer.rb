class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :name
  has_many :beaches, serializer: BeachSerializer

 
  # attribute :fav_beaches do |users|  
  #   users.fav_beaches.map do |fav_beach|
  #     {
  #       name: fav_beach.beach.name,
  #       location: fav_beach.beach.location,
  #       beach_type: fav_beach.beach.beach_type
  #     }
  #   end
  # end
end

