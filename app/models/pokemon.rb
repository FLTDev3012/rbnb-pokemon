class Pokemon < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
end
