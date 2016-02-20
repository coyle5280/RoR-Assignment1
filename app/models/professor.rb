class Professor < ActiveRecord::Base
  has_many :sections

  validates :name, presence: true
  validates :name, length: {minimum: 3}
  validates :name, length: {maximum: 30}
end
