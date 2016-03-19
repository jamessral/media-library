class AddFormatToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :format, :string 
  end
end
