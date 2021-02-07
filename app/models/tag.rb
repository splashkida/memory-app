class Tag < ApplicationRecord
  has_many :memory_tag_relations
  has_many :memories, through: :memory_tag_relations
end
