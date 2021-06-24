class AddDeletedAtToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :deleted_at, :datetime
    add_index :subscriptions, :deleted_at
  end
end
