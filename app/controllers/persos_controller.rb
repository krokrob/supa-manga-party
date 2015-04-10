class PersosController < ApplicationController
  before_action :check_guests_number?, only: [:index]

  def index
    @persos = Perso.all
  end

  def show
    @perso = Perso.find(params[:id])
    @user = @perso.user
  end

  def new
    @perso = Perso.new
  end

  def create
    @perso = Perso.new(perso_params)
    @perso.user = current_user
    if @perso.save

      redirect_to perso_path(@perso)
    else
      render :new
    end
  end

  def destroy
    @perso = Perso.find(params[:id])
    @perso.destroy
    redirect_to root_path
  end

  private

  def perso_params
    params.require(:perso).permit(
      :fullname,
      :age,
      :manga,
      :profession,
      :skills,
      :buddy,
      :buddy_name,
      :human,
      :picture_link)
  end

  def check_guests_number?
    if Perso.all.size >= 9
      true
    else
      false
    end
  end
end
