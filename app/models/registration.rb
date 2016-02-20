class Registration < ActiveRecord::Base
  belongs_to :student
  belongs_to :section
end

def search
  @students = Student.where("name like ?", "%#{params[:q]}%")
  render :index
end
