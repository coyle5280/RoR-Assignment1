class Student < ActiveRecord::Base
  has_and_belongs_to_many :sections
  validates :name, presence: true
  validates :name, length: {minimum: 3}
  validates :name, length: {maximum: 30}
end
