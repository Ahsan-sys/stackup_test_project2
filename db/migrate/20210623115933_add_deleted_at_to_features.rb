class AddDeletedAtToFeatures < ActiveRecord::Migration[6.1]
  def change
    add_column :features, :deleted_at, :datetime
    add_index :features, :deleted_at
  end
end
