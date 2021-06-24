class Trasection < ApplicationRecord
	belongs_to :subscription, optional: true
	belongs_to :feature, optional: true

end
