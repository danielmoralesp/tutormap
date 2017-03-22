class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :validate_user


  def show
    @user = User.find(params[:id])
    @teacher_id = Teacher.reflect_on_association(:teacher_id)

    #User.reflections["teachers"].foreign_key
  end

  private

    def validate_user
      flash[:alert] = 'No tienes permisos para acceder a esta ruta'
      redirect_to root_path unless current_user.id.to_s == params[:id]
    end

end
