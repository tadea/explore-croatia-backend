class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :firstname, :lastname, :name
  #has_many :fav_beaches

  attribute :fav_beaches do |user|
    user.fav_beaches.map do |fav_beach|
      {
        name: fav_beach.beach.name,
        location: fav_beach.beach.location,
        beach_type: fav_beach.beach.beach_type
      }
    end
  end
end
