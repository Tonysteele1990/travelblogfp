class Post < ApplicationRecord
	has_many :comments
	belongs_to :user
	
	

	mount_uploaders :images, ImagesUploader
	serialize :images, JSON
end