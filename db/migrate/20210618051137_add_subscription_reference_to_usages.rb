class AddSubscriptionReferenceToUsages < ActiveRecord::Migration[6.1]
  def change
    add_reference :usages, :subscription, null: false, foreign_key: true
  end
end
