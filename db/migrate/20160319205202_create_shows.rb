class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :season
      t.integer :year
      t.string :format

      t.timestamps
    end
  end
end
