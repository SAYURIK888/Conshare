class Category < ApplicationRecord
  has_many :topic_category_relations
  has_many :topic, through: :topic_category_relations
end
