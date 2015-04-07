class HomepageController < ApplicationController
  def home
    @persos = Perso.all
  end
end
