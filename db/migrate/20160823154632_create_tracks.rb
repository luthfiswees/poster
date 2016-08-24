class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :track
      t.string :album

      t.timestamps
    end
  end
end
