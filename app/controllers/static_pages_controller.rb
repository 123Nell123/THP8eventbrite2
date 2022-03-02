class StaticPagesController < ApplicationController
  def index

    flash[:notice] = "affichage d'un flash test"
  end

  def secret
    flash[:notice] = "secret decouvert"
  end



end
