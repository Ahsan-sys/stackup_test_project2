class CreateUsages < ActiveRecord::Migration[6.1]
  def change
    create_table :usages do |t|
      t.integer :total_usage
      t.date :usage_date

      t.timestamps
    end
  end
end
