class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence:true
  
  belongs_to :user
  has_many :comments
  has_many :topic_category_relations
  has_many :categories, through: :topic_category_relations
  
  mount_uploader :image, ImageUploader
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: "user"
end
