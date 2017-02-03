class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :idea, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :count

      t.timestamps null: false
    end
  end
end
