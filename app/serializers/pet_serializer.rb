class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :type, :size, :description
end
