class FavBeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :beach_id

  # attribute  :beach_json do |object|
  #   object.beach.name
  # end  
end
