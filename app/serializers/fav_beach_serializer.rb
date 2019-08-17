class FavBeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :beach_id
end
