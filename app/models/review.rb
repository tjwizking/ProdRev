class Review < ActiveRecord::Base
  validates :comment, presence: true, length: { minimum: 3, maximum: 200}
  validates :review_type, presence: true, length:{is: 1}
  belongs_to :product
end
 
