class Access < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '徒歩' },
    { id: 3, name: '自転車' },
    { id: 4, name: '電車' },
    { id: 5, name: '車' },
    { id: 6, name: 'バス' },
    { id: 7, name: 'タクシー' },
    { id: 8, name: '人力車' }
  ]
  include ActiveHash::Associations
  has_many :memories
  end