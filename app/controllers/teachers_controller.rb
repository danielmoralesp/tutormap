class TeachersController < ApplicationController
  before_action :authenticate_user!, except: [ :show, :index ]

  def index
    @teachers = Teacher.all
    render :layout => 'landing'
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user

    if @teacher.save
      flash[:notice] = 'El profesor ha sido creado con éxito'
      redirect_to teachers_path
    else
      flash[:alert] = 'Algo fallo, el profesor no ha sido creado con éxito'
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])

    if @teacher.update(teacher_params)
      flash[:notice] = 'El profesor ha sido actualizado con éxito'
      redirect_to teachers_path
    else
      flash[:alert] = 'Algo fallo, el profesor no ha sido actualizado con éxito'
      render :edit
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])

    @teacher.destroy
    flash[:notice] = 'El profesor ha sido eliminado con éxito'
    redirect_to teachers_path
  end

  private
    def teacher_params
      params.require(:teacher).permit(:phone, :image_url, :verify_bgd_check, :complete_exam, :about_me, :address, :verify_phone)
    end

end
