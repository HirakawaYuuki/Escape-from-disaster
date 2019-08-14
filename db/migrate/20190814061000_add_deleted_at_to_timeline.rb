class AddDeletedAtToTimeline < ActiveRecord::Migration[5.2]
  def change
    add_column :timelines, :deleted_at, :datetime
    add_index :timelines, :deleted_at
  end
end
