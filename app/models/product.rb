class Product < ActiveRecord::Base
	 validates :name, presence: true, length: { minimum: 2, maximum: 40}
	 belongs_to :review
	 mount_uploader :image, PictureUploader
end
