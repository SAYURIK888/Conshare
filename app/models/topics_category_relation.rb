class TopicsCategoryRelation < ApplicationRecord
  belongs_to :topic
  belongs_to :category
end
