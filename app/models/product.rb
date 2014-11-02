class Product < ActiveRecord::Base
	 validates :name, presence: true, length: { minimum: 2, maximum: 40}
	 has_many :reviews, dependent: :destroy
	 mount_uploader :image, PictureUploader

	 
	

end
