class Subscription < ApplicationRecord
  acts_as_paranoid
  belongs_to :buyer, class_name: "User", foreign_key: "user_id", optional: true
  belongs_to :plan, optional: true
  has_many :usages, foreign_key: :subscription_id, dependent: :nullify
  has_many :trasections, foreign_key: :subscription_id, dependent: :nullify

end