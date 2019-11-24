class DueniosController < ApplicationController
  before_action :set_duenio, only: [:show, :edit, :update, :destroy]

  # GET /duenios
  # GET /duenios.json
  def index
    @duenios = Duenio.all
  end

  # GET /duenios/1
  # GET /duenios/1.json
  def show
  end

  # GET /duenios/new
  def new
    @duenio = Duenio.new
  end

  # GET /duenios/1/edit
  def edit
  end

  # POST /duenios
  # POST /duenios.json
  def create
    @duenio = Duenio.new(duenio_params)

    respond_to do |format|
      if @duenio.save
        format.html { redirect_to @duenio, notice: 'Duenio was successfully created.' }
        format.json { render :show, status: :created, location: @duenio }
      else
        format.html { render :new }
        format.json { render json: @duenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duenios/1
  # PATCH/PUT /duenios/1.json
  def update
    respond_to do |format|
      if @duenio.update(duenio_params)
        format.html { redirect_to @duenio, notice: 'Duenio was successfully updated.' }
        format.json { render :show, status: :ok, location: @duenio }
      else
        format.html { render :edit }
        format.json { render json: @duenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duenios/1
  # DELETE /duenios/1.json
  def destroy
    @duenio.destroy
    respond_to do |format|
      format.html { redirect_to duenios_url, notice: 'Duenio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duenio
      @duenio = Duenio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duenio_params
      params.require(:duenio).permit(:nombre, :direccion, :image)
    end
end
