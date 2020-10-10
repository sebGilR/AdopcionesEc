class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :pet_type, :size, :description
end
