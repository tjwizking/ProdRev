class Review < ActiveRecord::Base
  validates :comment, presence: true, length: { minimum: 3, maximum: 200}
  belongs_to :product
end
