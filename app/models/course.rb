class Course < ActiveRecord::Base


  validates :number, presence: true

  validates :department, presence: true
  validates :name, length: {minimum: 5}
  validates :name, length: {maximum: 45}

  validates :name, presence: true
  validates :name, length: {minimum: 5}
  validates :name, length: {maximum: 45}
end
