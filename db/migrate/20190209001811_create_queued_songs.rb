class CreateSelectedSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :selected_songs do |t|
      t.integer :user_id
      t.integer :song_id
      t.boolean :played

      t.timestamps
    end
  end
end
