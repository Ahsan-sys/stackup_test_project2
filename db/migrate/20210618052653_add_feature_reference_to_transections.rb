class AddFeatureReferenceToTransections < ActiveRecord::Migration[6.1]
  def change
    add_reference :trasections, :feature, null: false, foreign_key: true
  end
end
