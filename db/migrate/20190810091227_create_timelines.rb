class CreateTimelines < ActiveRecord::Migration[5.2]
  def change
    create_table :timelines do |t|
      t.string :image_id
      t.string :timeline
      t.integer :user_id

      t.timestamps
    end
  end
end
