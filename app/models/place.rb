class Place < ApplicationRecord

  has_one_attached :image
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :country

  with_options presence: true do
    validates :image
    validates :name
    validates :info
    validates :category_id, numericality: { other_than: 1 ,message:"Select" }
    validates :country_id, numericality: { other_than: 1 ,message:"Select" }
  end

end
