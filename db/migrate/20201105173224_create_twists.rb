class CreateTwists < ActiveRecord::Migration[6.0]
  def change
    create_table :twists do |t|
      t.text :twist

      t.timestamps
    end
  end
end
