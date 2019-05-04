class ManualController < ApplicationController
  def index
    @instituciones = Institucione.all
  end
end
