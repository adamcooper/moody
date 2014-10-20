class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.integer :user_id
      t.integer :emotion_id

      t.timestamps null: false
    end
  end
end
