class ChangeTrasectionFeatureIdNullable < ActiveRecord::Migration[6.1]
  def change
    change_column_null :trasections, :feature_id, true
  end
end
