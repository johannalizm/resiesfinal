class InstitucionesController < ApplicationController
  before_action :set_institucione, only: [:show, :edit, :update, :destroy]

  # GET /instituciones
  # GET /instituciones.json
  def index
    @instituciones = Institucione.all
  end

  # GET /instituciones/1
  # GET /instituciones/1.json
  def show
    @instituciones = Institucione.all
  end

  # GET /instituciones/new
  def new
    @institucione = Institucione.new
    @instituciones = Institucione.all
  end

  # GET /instituciones/1/edit
  def edit
@instituciones = Institucione.all
  end

  # POST /instituciones
  # POST /instituciones.json
  def create
    @institucione = Institucione.new(institucione_params)
    @institucione.tipoinstitucione_id = 1
    @institucione.tiporelacione_id = 1
    @institucione.region_id = 1
    respond_to do |format|
      if @institucione.save
        format.html { redirect_to @institucione, notice: '' }
        format.json { render :show, status: :created, location: @institucione }
      else
        format.html { render :new }
        format.json { render json: @institucione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instituciones/1
  # PATCH/PUT /instituciones/1.json
  def update
    respond_to do |format|
      if @institucione.update(institucione_params)
        format.html { redirect_to @institucione, notice: '' }
        format.json { render :show, status: :ok, location: @institucione }
      else
        format.html { render :edit }
        format.json { render json: @institucione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instituciones/1
  # DELETE /instituciones/1.json
  def destroy
    @institucione.destroy
    respond_to do |format|
      format.html { redirect_to instituciones_url, notice: 'Institucione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_institucione
      @institucione = Institucione.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institucione_params
      params.require(:institucione).permit(:nombre, :direccion, :codigopostal, :tipoinstitucione_id, :tiporelacione_id, :region_id,:avatar)
    end
end
