class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :timelines, dependent: :destroy
         

         attachment :profile_image
         validates :family_name, presence: true
         validates :first_name, presence: true
         validates :kana_family_name, presence: true
         validates :kana_first_name, presence: true


    def email_required?
      false
      
    end

    def email_changed?
      false
      
    end

    def self.search(search)

    	if search
    		User.where(['family_name LIKE ? OR first_name LIKE ?', "%#{search}%", "%#{search}%"])
    	else
    		User.all
        end
    end
end
