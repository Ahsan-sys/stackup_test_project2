class AddDeletedAtToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :deleted_at, :datetime
    add_index :plans, :deleted_at
  end
end
