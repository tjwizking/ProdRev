class Review < ActiveRecord::Base
  validates :comment, presence: true, length: { minimum: 3, maximum: 200}
  validates :type, presence: true, length:{is: 1}
  belongs_to :product
end
 