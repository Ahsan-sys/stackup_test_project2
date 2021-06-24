class PlanPolicy < ApplicationPolicy

	def index?
		user.type == 'Admin'
	end

	def create?
		user.type == 'Admin'

	end

	def destroy?
		user.type == 'Admin'
	end

	def new?
		user.type == 'Admin'
		
		
	end

end