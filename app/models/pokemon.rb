class Pokemon < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :my_search,
  against: [ :name, :description, :pokemon_type ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
