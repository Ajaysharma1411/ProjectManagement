class User < ApplicationRecord
mount_uploader :image, ImageUploader

	has_secure_password

	has_many :projectowners, dependent: :destroy

	validates :firstname, presence: true, length: { maximum: 50}
	validates :lastname, presence: true, length: { maximum: 50}
	validates :email, presence: true, length: { maximum: 200},  
	                        
	                         uniqueness: { case_sensitive: false }

	      
	      validates :password, length: { minimum: 4 }


end
