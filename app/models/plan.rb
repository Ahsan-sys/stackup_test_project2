class Plan < ApplicationRecord
	acts_as_paranoid
	has_many :subscriptions, foreign_key: :plan_id, dependent: :destroy
	has_many :buyers, through: :subscriptions, foreign_key: :plan_id
	has_many :features,foreign_key: :plan_id, dependent: :destroy
end
