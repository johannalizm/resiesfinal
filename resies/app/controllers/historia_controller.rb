class HistoriaController < ApplicationController
  before_action :set_historium, only: [:show, :edit, :update, :destroy]

  # GET /historia
  # GET /historia.json
  def index
    @historia = Historium.all
    @instituciones = Institucione.all
    respond_to do |format|
      format.html
      format.json
      format.pdf do
        render pdf: "Reporte RESIES",
         disposition: 'attachment',
        template: "historia/index.html.erb"
      end
    end
  end

  # GET /historia/1
  # GET /historia/1.json
  def show
    @questions = Question.all
    @formularios = Formulario.all
    @instituciones = Institucione.all
    respond_to do |format|
      format.html
      format.json
      format.pdf do
        render pdf: "Reporte RESIES",
         disposition: 'attachment',
        template: "historia/show.html.erb"

      end


    end

  end

  # GET /historia/new
  def new
    @historium = Historium.new
    @formularios = Formulario.all
    @instituciones = Institucione.all
  end

  # GET /historia/1/edit
  def edit
    @questions = Question.all
    @formularios = Formulario.all
    @instituciones = Institucione.all
  end

  # POST /historia
  # POST /historia.json
  def create
    @historium = Historium.new(historium_params)

    respond_to do |format|
      if @historium.save
        format.html { redirect_to @historium, notice: 'Historium was successfully created.' }
        format.json { render :show, status: :created, location: @historium }
      else
        format.html { render :new }
        format.json { render json: @historium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia/1
  # PATCH/PUT /historia/1.json
  def update
    respond_to do |format|
      if @historium.update(historium_params)
        format.html { redirect_to formulario_path, notice: 'Historium was successfully updated.' }
        format.json { render :index, status: :ok, location: formulario_path }
      else
        format.html { render :edit }
        format.json { render json: @historium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia/1
  # DELETE /historia/1.json
  def destroy
    @historium.destroy
    respond_to do |format|
      format.html { redirect_to historia_url, notice: 'Historium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historium
      @historium = Historium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historium_params
      params.require(:historium).permit(:historiaid,:mesfecha,:global, :gobpon, :gobbru, :gob1pon, :gob1bru, :gob2pon, :gob2bru, :gob3pon, :gob3bru, :gob4pon, :gob4bru, :gob5pon, :gob5bru, :gob6pon, :gob6bru, :cupon, :cubru, :cu1pon, :cu1bru, :cu2pon, :cu2bru, :cu3pon, :cu3bru, :cu4pon, :cu4bru, :cu5pon, :cu5bru, :cu6pon, :cu6bru, :cu7pon, :cu7bru, :acpon, :acbru, :ac1pon, :ac1bru, :ac2pon, :ac2bru, :ac3pon, :ac3bru, :ac4pon, :ac4bru, :ac5pon, :ac5bru, :ac6pon, :ac6bru, :ac7pon, :ac7bru, :ac8pon, :ac8bru, :gcpon, :gcbru, :gc1pon, :gc1bru, :gc2pon, :gc2bru, :gc3pon, :gc3bru, :gc4pon, :gc4bru, :gc5pon, :gc5bru, :gc6pon, :gc6bru, :gc7pon, :gc7bru, :gc8pon, :gc8bru, :gc9pon, :gc9bru, :gc10pon, :gc10bru, :gc11pon, :gc11bru, :gc12pon, :gc12bru, :gc13pon, :gc13bru, :gc14pon, :gc14bru, :gc15pon, :gc15bru, :rspon, :rsbru, :rs1pon, :rs1bru, :rs2pon, :rs2bru, :rs3pon, :rs3bru, :rs4pon, :rs4bru, :rs5pon, :rs5bru, :rs6pon, :rs6bru, :rs7pon, :rs7bru, :rs8pon, :rs8bru, :rs9pon, :rs9bru)
    end
end
