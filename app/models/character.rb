class Character < ApplicationRecord
  has_many :quotes, foreign_key: :character_id, primary_key: :_id
end
