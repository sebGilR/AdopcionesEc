class Pet < ApplicationRecord
  belongs_to :user, optional: true
end
