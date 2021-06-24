class Feature < ApplicationRecord
	acts_as_paranoid
	belongs_to :plan, optional: true
	has_many :trasections
	has_many :usages, foreign_key: :feature_id

	has_many :trasections, foreign_key: :feature_id
end
