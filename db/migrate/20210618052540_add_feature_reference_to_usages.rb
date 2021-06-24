class AddFeatureReferenceToUsages < ActiveRecord::Migration[6.1]
  def change
    add_reference :usages, :feature, null: false, foreign_key: true
  end
end
