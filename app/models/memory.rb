class Memory < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :memory_tag_relations
  has_many :tags, through: :memory_tag_relations

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :access
  belongs_to :price
  belongs_to :scene
end
