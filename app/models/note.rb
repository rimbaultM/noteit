class Note < ApplicationRecord
  belongs_to :notegroup
  belongs_to :user
end
