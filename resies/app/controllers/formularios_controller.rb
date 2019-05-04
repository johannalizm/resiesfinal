class FormulariosController < ApplicationController
  before_action :set_formulario, only: [:show, :edit, :update, :destroy]

  # GET /formularios
  # GET /formularios.json
  def index
    @formularios = Formulario.where(user_id: current_user.id)
    @instituciones = Institucione.all
  end

  # GET /formularios/1
  # GET /formularios/1.json
  def show
    @questions = Question.all
    @instituciones = Institucione.all
  end

  # GET /formularios/new
  def new
    @formulario = Formulario.new
    @instituciones = Institucione.all
    @questions = Question.order("indicador")
    @alternativas = Alternativa.all
    Rails.logger.debug("New method executed")
  end

  #GET /formularios/1/edit
  def edit
    @questions = Question.all
    @instituciones = Institucione.all
  end

  # POST /formularios
  # POST /formularios.json
  def create

    @formulario = current_user.formularios.new(formulario_params)
    respond_to do |format|
      if @formulario.save

        @historium = Historium.new
        @historium.id = @formulario.id
        @historium.save

        format.html { redirect_to @historium, notice: 'Formulario was successfully created.' }
        format.json { render :edit, status: :created, location: @historium }
      else
        format.html { render :new }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formularios/1
  # PATCH/PUT /formularios/1.json
  def update

    respond_to do |format|
      if @formulario.update(formulario_params)
        format.html { redirect_to @formulario, notice: 'Formulario was successfully updated.' }
        format.json { render :show, status: :ok, location: @formulario }
      else
        format.html { render :edit }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.json
  def destroy
    @formulario.destroy
    respond_to do |format|
      format.html { redirect_to formularios_url, notice: 'Formulario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario
      @formulario = Formulario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulario_params
      params.require(:formulario).permit(:nombre_encargado, :telefono, :fecha,:DI12, :DI13,:DI14,:DI15,:DI16,:DI17,:DI18,:DI19,:DI20,:DI21,:DI22,:DI23,:DI24,:DI25,:DI26,:DI27,:DI28,:DI29,:DI30,:DI31,:DI32,:DI33,:DI34,:DI35, :GOB1_1,:DGOB1_1,
      :VGOB1_1,:CGOB1_1,:GOB1_2,:DGOB1_2,:VGOB1_2,:CGOB1_2,:GOB1_3,:DGOB1_3,:VGOB1_3,:CGOB1_3,:GOB1_4,:DGOB1_4,:VGOB1_4,:CGOB1_4,:GOB1_5,:DGOB1_5,:VGOB1_5,:CGOB1_5,:GOB1_6,:DGOB1_6,:VGOB1_6,:CGOB1_6,:GOB1_7,:DGOB1_7,:VGOB1_7,:CGOB1_7,:GOB1_8,:DGOB1_8,:VGOB1_8,:CGOB1_8,
      :GOB2_1,:DGOB2_1,:VGOB2_1,:CGOB2_1,:GOB2_2,:DGOB2_2,:VGOB2_2,:CGOB2_2,:GOB2_3,:DGOB2_3,:VGOB2_3,:CGOB2_3,:GOB2_4,:DGOB2_4,:VGOB2_4,:CGOB2_4,:GOB2_5,:DGOB2_5,:VGOB2_5,:CGOB2_5,:GOB2_6,:DGOB2_6,:VGOB2_6,:CGOB2_6,:GOB2_7,:DGOB2_7,:VGOB2_7,:CGOB2_7,:GOB2_8,:DGOB2_8,:VGOB2_8,:CGOB2_8,
      :GOB3_1,:DGOB3_1,:VGOB3_1,:CGOB3_1,:GOB3_2,:DGOB3_2,:VGOB3_2,:CGOB3_2,:GOB3_3,:DGOB3_3,:VGOB3_3,:CGOB3_3,:GOB3_4,:DGOB3_4,:VGOB3_4,:CGOB3_4,:GOB3_5,:DGOB3_5,:VGOB3_5,:CGOB3_5,:GOB3_6,:DGOB3_6,:VGOB3_6,:CGOB3_6,:GOB3_7,:DGOB3_7,:VGOB3_7,:CGOB3_7,:GOB3_8,:DGOB3_8,:VGOB3_8,:CGOB3_8,
      :GOB3_9,:DGOB3_9,:VGOB3_9,:CGOB3_9,:GOB3_10,:DGOB3_10,:VGOB3_10,:CGOB3_10,:GOB3_11,:DGOB3_11,:VGOB3_11,:CGOB3_11,:GOB3_12,:DGOB3_12,:VGOB3_12,:CGOB3_12,:GOB3_13,:DGOB3_13,:VGOB3_13,:CGOB3_13,:GOB3_14,:DGOB3_14,:VGOB3_14,:CGOB3_14,:GOB3_15,:DGOB3_15,:VGOB3_15,:CGOB3_15,
      :GOB4_1,:DGOB4_1,:VGOB4_1,:CGOB4_1,:GOB4_2,:DGOB4_2,:VGOB4_2,:CGOB4_2,:GOB4_3,:DGOB4_3,:VGOB4_3,:CGOB4_3,:GOB4_4,:DGOB4_4,:VGOB4_4,:CGOB4_4,:GOB4_5,:DGOB4_5,:VGOB4_5,:CGOB4_5,
      :GOB5_1,:DGOB5_1,:VGOB5_1,:CGOB5_1,:GOB5_2,:DGOB5_2,:VGOB5_2,:CGOB5_2,:GOB5_3,:DGOB5_3,:VGOB5_3,:CGOB5_3,:GOB5_4,:DGOB5_4,:VGOB5_4,:CGOB5_4,:GOB5_5,:DGOB5_5,:VGOB5_5,:CGOB5_5,:GOB5_6,:DGOB5_6,:VGOB5_6,:CGOB5_6,:GOB5_7,:DGOB5_7,:VGOB5_7,:CGOB5_7,:GOB5_8,:DGOB5_8,:VGOB5_8,:CGOB5_8,
      :GOB6_1,:DGOB6_1,:VGOB6_1,:CGOB6_1,:GOB6_2,:DGOB6_2,:VGOB6_2,:CGOB6_2,:CU1_1,:DCU1_1,:VCU1_1,:CCU1_1,:CU1_2,:DCU1_2,:VCU1_2,:CCU1_2,:CU1_3,:DCU1_3,:VCU1_3,:CCU1_3,:CU1_4,:DCU1_4,:VCU1_4,:CCU1_4,:CU1_5,:DCU1_5,:VCU1_5,:CCU1_5,:CU2_1,:DCU2_1,:VCU2_1,:CCU2_1,
      :CU2_2,:DCU2_2,:VCU2_2,:CCU2_2,:CU3_1,:DCU3_1,:VCU3_1,:CCU3_1,:CU3_2,:DCU3_2,:VCU3_2,:CCU3_2,:CU3_3,:DCU3_3,:VCU3_3,:CCU3_3,:CU3_4,:DCU3_4,:VCU3_4,:CCU3_4,:CU3_5,:DCU3_5,:VCU3_5,:CCU3_5,:CU4_1,:DCU4_1,:VCU4_1,:CCU4_1,:CU4_2,:DCU4_2,:VCU4_2,:CCU4_2,
      :CU5_1,:DCU5_1,:VCU5_1,:CCU5_1,:CU5_2,:DCU5_2,:VCU5_2,:CCU5_2,:CU5_3,:DCU5_3,:VCU5_3,:CCU5_3,:CU6_1,:DCU6_1,:VCU6_1,:CCU6_1,:CU6_2,:DCU6_2,:VCU6_2,:CCU6_2,:CU7_1,:DCU7_1,:VCU7_1,:CCU7_1,:CU7_2,:DCU7_2,:VCU7_2,:CCU7_2,:CU7_3,:DCU7_3,:VCU7_3,:CCU7_3,
      :CU7_4,:DCU7_4,:VCU7_4,:CCU7_4,:CU7_5,:DCU7_5,:VCU7_5,:CCU7_5,:CU7_6,:DCU7_6,:VCU7_6,:CCU7_6,:CU7_7,:DCU7_7,:VCU7_7,:CCU7_7,:CU7_8,:DCU7_8,:VCU7_8,:CCU7_8,:AC1_1,:DAC1_1,:VAC1_1,:CAC1_1,:AC1_2,:DAC1_2,:VAC1_2,:CAC1_2,:AC2_1,:DAC2_1,:VAC2_1,:CAC2_1,
      :AC2_2,:DAC2_2,:VAC2_2,:CAC2_2,:AC2_3,:DAC2_3,:VAC2_3,:CAC2_3,:AC2_4,:DAC2_4,:VAC2_4,:CAC2_4,:AC2_5,:DAC2_5,:VAC2_5,:CAC2_5,:AC2_6,:DAC2_6,:VAC2_6,:CAC2_6,:AC2_7,:DAC2_7,:VAC2_7,:CAC2_7,:AC2_8,:DAC2_8,:VAC2_8,:CAC2_8,:AC3_1,:DAC3_1,:VAC3_1,:CAC3_1,
      :AC3_2,:DAC3_2,:VAC3_2,:CAC3_2,:AC4_1,:DAC4_1,:VAC4_1,:CAC4_1,:AC5_1,:DAC5_1,:VAC5_1,:CAC5_1,:AC6_1,:DAC6_1,:VAC6_1,:CAC6_1,:AC6_2,:DAC6_2,:VAC6_2,:CAC6_2,:AC7_1,:DAC7_1,:VAC7_1,:CAC7_1,:AC7_2,:DAC7_2,:VAC7_2,:CAC7_2,:AC7_3,:DAC7_3,:VAC7_3,:CAC7_3,
      :AC8_1,:DAC8_1,:VAC8_1,:CAC8_1,:AC8_2,:DAC8_2,:VAC8_2,:CAC8_2,:AC8_3,:DAC8_3,:VAC8_3,:CAC8_3,:AC8_4,:DAC8_4,:VAC8_4,:CAC8_4,:AC8_5,:DAC8_5,:VAC8_5,:CAC8_5,:GC1_1,:DGC1_1,:VGC1_1,:CGC1_1,:GC1_2,:DGC1_2,:VGC1_2,:CGC1_2,
      :GC2_1,:DGC2_1,:VGC2_1,:CGC2_1,:GC2_2,:DGC2_2,:VGC2_2,:CGC2_2,:GC2_3,:DGC2_3,:VGC2_3,:CGC2_3,:GC2_4,:DGC2_4,:VGC2_4,:CGC2_4,:GC2_5,:DGC2_5,:VGC2_5,:CGC2_5,:GC2_6,:DGC2_6,:VGC2_6,:CGC2_6,:GC2_7,:DGC2_7,:VGC2_7,:CGC2_7,:GC2_8,:DGC2_8,:VGC2_8,:CGC2_8,
      :GC2_9,:DGC2_9,:VGC2_9,:CGC2_9,:GC3_1,:DGC3_1,:VGC3_1,:CGC3_1,:GC3_2,:DGC3_2,:VGC3_2,:CGC3_2,:GC3_3,:DGC3_3,:VGC3_3,:CGC3_3,:GC3_4,:DGC3_4,:VGC3_4,:CGC3_4,:GC3_5,:DGC3_5,:VGC3_5,:CGC3_5,:GC3_6,:DGC3_6,:VGC3_6,:CGC3_6,:GC3_7,:DGC3_7,:VGC3_7,:CGC3_7,
      :GC3_8,:DGC3_8,:VGC3_8,:CGC3_8,:GC4_1,:DGC4_1,:VGC4_1,:CGC4_1,:GC4_2,:DGC4_2,:VGC4_2,:CGC4_2,:GC4_3,:DGC4_3,:VGC4_3,:CGC4_3,:GC4_4,:DGC4_4,:VGC4_4,:CGC4_4,:GC4_5,:DGC4_5,:VGC4_5,:CGC4_5,:GC4_6,:DGC4_6,:VGC4_6,:CGC4_6,:GC4_7,:DGC4_7,:VGC4_7,:CGC4_7,
      :GC4_8,:DGC4_8,:VGC4_8,:CGC4_8,:GC5_1,:DGC5_1,:VGC5_1,:CGC5_1,:GC5_2,:DGC5_2,:VGC5_2,:CGC5_2,:GC5_3,:DGC5_3,:VGC5_3,:CGC5_3,:GC5_4,:DGC5_4,:VGC5_4,:CGC5_4,:GC5_5,:DGC5_5,:VGC5_5,:CGC5_5,:GC5_6,:DGC5_6,:VGC5_6,:CGC5_6,:GC5_7,:DGC5_7,:VGC5_7,:CGC5_7,
      :GC5_8,:DGC5_8,:VGC5_8,:CGC5_8,:GC5_9,:DGC5_9,:VGC5_9,:CGC5_9,:GC5_10,:DGC5_10,:VGC5_10,:CGC5_10,:GC6_1,:DGC6_1,:VGC6_1,:CGC6_1,:GC6_2,:DGC6_2,:VGC6_2,:CGC6_2,:GC6_3,:DGC6_3,:VGC6_3,:CGC6_3,:GC6_4,:DGC6_4,:VGC6_4,:CGC6_4,:GC6_5,:DGC6_5,:VGC6_5,:CGC6_5,
      :GC6_6,:DGC6_6,:VGC6_6,:CGC6_6,:GC7_1,:DGC7_1,:VGC7_1,:CGC7_1,:GC7_2,:DGC7_2,:VGC7_2,:CGC7_2,:GC7_3,:DGC7_3,:VGC7_3,:CGC7_3,:GC8_1,:DGC8_1,:VGC8_1,:CGC8_1,:GC8_2,:DGC8_2,:VGC8_2,:CGC8_2,:GC8_3,:DGC8_3,:VGC8_3,:CGC8_3,:GC8_4,:DGC8_4,:VGC8_4,:CGC8_4,
      :GC8_5,:DGC8_5,:VGC8_5,:CGC8_5,:GC8_6,:DGC8_6,:VGC8_6,:CGC8_6,:GC8_7,:DGC8_7,:VGC8_7,:CGC8_7,:GC9_1,:DGC9_1,:VGC9_1,:CGC9_1,:GC9_2,:DGC9_2,:VGC9_2,:CGC9_2,:GC9_3,:DGC9_3,:VGC9_3,:CGC9_3,:GC9_4,:DGC9_4,:VGC9_4,:CGC9_4,:GC9_5,:DGC9_5,:VGC9_5,:CGC9_5,
      :GC9_6,:DGC9_6,:VGC9_6,:CGC9_6,:GC9_7,:DGC9_7,:VGC9_7,:CGC9_7,:GC9_8,:DGC9_8,:VGC9_8,:CGC9_8,:GC9_9,:DGC9_9,:VGC9_9,:CGC9_9,:GC10_1,:DGC10_1,:VGC10_1,:CGC10_1,:GC11_1,:DGC11_1,:VGC11_1,:CGC11_1,:GC12_1,:DGC12_1,:VGC12_1,:CGC12_1,:GC12_2,:DGC12_2,:VGC12_2,:CGC12_2,:GC13_1,
      :DGC13_1,:VGC13_1,:CGC13_1,:GC13_2,:DGC13_2,:VGC13_2,:CGC13_2,:GC14_1,:DGC14_1,:VGC14_1,:CGC14_1,
      :GC14_2,:DGC14_2,:VGC14_2,:CGC14_2,:GC14_3,:DGC14_3,:VGC14_3,:CGC14_3,:GC15_1,:DGC15_1,:VGC15_1,:CGC15_1,:GC15_2,:DGC15_2,:VGC15_2,:CGC15_2,:GC15_3,:DGC15_3,:VGC15_3,:CGC15_3,:GC15_4,:DGC15_4,:VGC15_4,:CGC15_4,:GC15_5,:DGC15_5,:VGC15_5,:CGC15_5,:GC15_6,:DGC15_6,:VGC15_6,:CGC15_6,
      :GC15_7,:DGC15_7,:VGC15_7,:CGC15_7,:RS1_1,:DRS1_1,:VRS1_1,:CRS1_1,:RS1_2,:DRS1_2,:VRS1_2,:CRS1_2,:RS1_3,:DRS1_3,:VRS1_3,:CRS1_3,:RS2_1,:DRS2_1,:VRS2_1,:CRS2_1,:RS2_2,:DRS2_2,:VRS2_2,:CRS2_2,:RS2_3,:DRS2_3,:VRS2_3,:CRS2_3,:RS2_4,:DRS2_4,:VRS2_4,:CRS2_4,
      :RS3_1,:DRS3_1,:VRS3_1,:CRS3_1,:RS3_2,:DRS3_2,:VRS3_2,:CRS3_2,:RS4_1,:DRS4_1,:VRS4_1,:CRS4_1,:RS4_2,:DRS4_2,:VRS4_2,:CRS4_2,:RS4_3,:DRS4_3,:VRS4_3,:CRS4_3,:RS4_4,:DRS4_4,:VRS4_4,:CRS4_4,:RS4_5,:DRS4_5,:VRS4_5,:CRS4_5,:RS5_1,:DRS5_1,:VRS5_1,:CRS5_1,
      :RS5_2,:DRS5_2,:VRS5_2,:CRS5_2,:RS5_3,:DRS5_3,:VRS5_3,:CRS5_3,:RS6_1,:DRS6_1,:VRS6_1,:CRS6_1,:RS6_2,:DRS6_2,:VRS6_2,:CRS6_2,:RS6_3,:DRS6_3,:VRS6_3,:CRS6_3,:RS7_1,:DRS7_1,:VRS7_1,:CRS7_1, :RS7_2,:DRS7_2,:VRS7_2,:CRS7_2,:RS7_3,:DRS7_3,:VRS7_3,:CRS7_3,
      :RS8_1,:DRS8_1,:VRS8_1,:CRS8_1, :RS8_2,:DRS8_2,:VRS8_2,:CRS8_2, :RS8_3,:DRS8_3,:VRS8_3,:CRS8_3,:RS9_1,:DRS9_1,:VRS9_1,:CRS9_1
      )
    end
end
