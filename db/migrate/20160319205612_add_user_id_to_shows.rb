class AddUserIdToShows < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :user_id, :integer
  end
end
