class Review < ActiveRecord::Base

	belongs_to :user
	belongs_to :urednici

	scope :confirmed, -> {where(confirmed: true)}
end
