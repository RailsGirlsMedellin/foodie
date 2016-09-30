class Plate < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
  validates :title, :description, :producer, presence: true
  validates :description, length: { minimum: 10 }
  validates :title, uniqueness: { scope: :producer, message: 'should happen once per producer' }
end
