class Quote < ApplicationRecord
  belongs_to :character, foreign_key: "character_id", primary_key: '_id'
end