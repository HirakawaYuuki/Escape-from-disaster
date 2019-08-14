class Timeline < ApplicationRecord

	belongs_to :user
	belongs_to :admin
	attachment :image
end
