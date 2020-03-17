class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :age
      t.string :address
      t.string :sex
      t.string :image
      t.string :states
      
      t.timestamps
    end
  end
end