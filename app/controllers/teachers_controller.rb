class TeachersController < ApplicationController
  before_action :authenticate_user!, except: [ :show, :index ]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      flash[:notice] = 'El profesor ha sido creado con éxito'
      redirect_to teachers_path
    else
      flash[:alert] = 'Algo fallo, el profesor no ha sido creado con éxito'
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def teacher_params
      params.require(:teacher).permit(:phone, :image_url, :verify_bgd_check, :complete_exam, :about_me, :address, :verify_phone)
    end

end
