class SubscriptionPolicy < ApplicationPolicy

	def index?
		user.type == 'Buyer'
	end

	def create?
		user.type == 'Buyer'

	end

	def destroy?
		user.type == 'Buyer'
	end

	def new?
		user.type == 'Buyer'
		
		
	end
end