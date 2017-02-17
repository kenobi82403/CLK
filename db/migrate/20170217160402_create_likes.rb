class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.integer :likeable_id
      t.string :likeable_type
      t.integer :status

      t.timestamps
    end
  end
end
