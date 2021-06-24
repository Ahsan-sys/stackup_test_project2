class CreateTrasections < ActiveRecord::Migration[6.1]
  def change
    create_table :trasections do |t|
      t.integer :amount
      t.integer :overuse
      t.date :trans_date

      t.timestamps
    end
  end
end
