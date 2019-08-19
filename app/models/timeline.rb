class Timeline < ApplicationRecord

	belongs_to :user
	attachment :image

	validates :timeline, length: {maximum: 200}

	def self.search(search)
		if search
			Timeline.where(['timeline LIKE?', "%#{search}%"])
		else
			Timeline.all
		end
		
	end
end
