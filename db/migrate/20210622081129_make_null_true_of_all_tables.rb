class MakeNullTrueOfAllTables < ActiveRecord::Migration[6.1]
  def change
    change_column_null :features, :plan_id, true
    change_column_null :subscriptions, :plan_id, true
    change_column_null :subscriptions, :user_id, true
    change_column_null :trasections, :subscription_id, true
    change_column_null :usages, :subscription_id, true
    change_column_null :usages, :feature_id, true

  end
end
