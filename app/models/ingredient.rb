class Ingredient < ActiveRecord::Base
  belongs_to :plate
  validates :content, presence: true
end
