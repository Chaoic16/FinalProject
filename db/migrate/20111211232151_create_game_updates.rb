class CreateGameUpdates < ActiveRecord::Migration
  def change
    create_table :game_updates do |t|
      t.string :nameG
      t.string :developerG
      t.string :publisherG
      t.string :platformG

      t.timestamps
    end
  end
end
