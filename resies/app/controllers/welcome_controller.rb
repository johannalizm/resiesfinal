class WelcomeController < ApplicationController
  def index
    @instituciones = Institucione.all
  end
end
