class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'カテゴリーを選択してください' },
    { id: 2, name: 'ホテル' },
    { id: 3, name: 'バー、クラブ' },
    { id: 4, name: 'スポット' },
    { id: 5, name: 'レストラン' },
  ]

  include ActiveHash::Associations
  has_many :places
end