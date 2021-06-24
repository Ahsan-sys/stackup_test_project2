class Buyer < User
	has_many :subscriptions, foreign_key: :user_id, dependent: :delete_all
	has_many :plans, through: :subscriptions

end