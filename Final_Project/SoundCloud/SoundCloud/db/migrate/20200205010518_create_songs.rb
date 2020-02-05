class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :user_id, null: false
      t.string :artist, null: false
      t.string :genre, null: false
      t.integer :likes, null: false
      t.integer :replays, null: false
      t.integer :playlist_id, null: false
      t.string :release_date, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
