class PersosController < ApplicationController
  def index
    @persos = Perso.all
  end

  def show
    @perso = Perso.find(params[:id])
  end

  def new
    @perso = Perso.new
  end

  def create
    @perso = Perso.new(perso_params)
    @perso.save
  end

  def destroy
    @perso = current_user.perso
    @perso.destroy
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
      :picture)
  end
end
