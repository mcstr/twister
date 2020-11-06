class AddUserToTwists < ActiveRecord::Migration[6.0]
  def change
    add_column :twists, :user_id, :integer
  end
end
