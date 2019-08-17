class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :beach_type, :summary
end
