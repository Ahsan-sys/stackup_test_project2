class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :name
      t.integer :code
      t.integer :price
      t.integer :limit

      t.timestamps
    end
  end
end
