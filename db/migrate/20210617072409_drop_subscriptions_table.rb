class DropSubscriptionsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :subscriptions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
