class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :beach_type, :summary
#  attribute  :beaches_json do |object|
#     object.beaches.name
#   end
  # has_many :fav_beaches, serializer: FavBeachSerializer
end
