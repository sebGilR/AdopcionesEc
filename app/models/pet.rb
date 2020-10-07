class Pet < ApplicationRecord
  belongs_to :user, optional: true

  validates_presence_of :pet_type, on: :create, message: "can't be blank"
  validates_presence_of :size, on: :create, message: "can't be blank"
  validates_presence_of :description, on: :create, message: "can't be blank"
end
