class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :HarpType
      t.string :SongName
      t.string :WhoseSong
      t.string :Genre
      t.string :PostedBy
      t.integer :Views

      t.timestamps
    end
  end
end
