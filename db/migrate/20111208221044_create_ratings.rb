class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.string :user_id
      t.string :game_id

      t.timestamps
    end
  end
end
