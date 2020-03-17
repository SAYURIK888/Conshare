class CreateTopicsCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :topics_category_relations do |t|
      t.integer  :user_id
      t.integer :topic_id
      t.integer :category_id
      t.timestamps
    end
  end
end
