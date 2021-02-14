class Memory < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :access
  belongs_to :price
  belongs_to :scene
end
