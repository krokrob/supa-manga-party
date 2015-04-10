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
    redirect_to perso_path(@perso)
  end

  def destroy
    @perso = current_user.perso
    @perso.destroy
  end

  # def choose_picture
  #   @perso = current_user.perso
  #   picture_search = "https://www.google.fr/search?q=#{@perso.fullname}+#{@perso.manga}+images"
  #   target_pictures = []

  #   html_file = open(picture_search)
  #   html_doc = Nokogiri::HTML(html_file)

  #   html_doc.search('.rg_ul').each do |element|
  #     target_pictures << element.
  #   end
  # end

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
      :picture)
  end
end
