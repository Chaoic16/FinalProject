class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :developer_id
      t.string :publisher_id
      t.string :platform_id

      t.timestamps
    end
  end
end
