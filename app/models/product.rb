class Product < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 2, maximum: 40}
end
