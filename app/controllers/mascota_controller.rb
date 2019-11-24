class MascotaController < ApplicationController
  before_action :set_mascotum, only: [:show, :edit, :update, :destroy]

  # GET /mascota
  # GET /mascota.json
  def index
    @mascota = Mascotum.all
  end

  # GET /mascota/1
  # GET /mascota/1.json
  def show
  end

  # GET /mascota/new
  def new
    @mascotum = Mascotum.new
  end

  # GET /mascota/1/edit
  def edit
  end

  def agregarTratamiento
    @mascota=Mascotum.find(params[:mascota_id])
    r=Recetum.create(doctor_id: params[:doctor_id], mascota_id: params[:mascota_id] )
    Tratamiento.create(receta_id: r.id, descripcion: params[:descripcion])
    redirect_to @mascota
  end

  # POST /mascota
  # POST /mascota.json
  def create

    @mascotum = Mascotum.new(mascotum_params)

    respond_to do |format|
      if @mascotum.save
        format.html { redirect_to @mascotum, notice: 'Mascotum was successfully created.' }
        format.json { render :show, status: :created, location: @mascotum }
      else
        format.html { render :new }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mascota/1
  # PATCH/PUT /mascota/1.json
  def update
    respond_to do |format|
      if @mascotum.update(mascotum_params)
        format.html { redirect_to @mascotum, notice: 'Mascotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @mascotum }
      else
        format.html { render :edit }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mascota/1
  # DELETE /mascota/1.json
  def destroy
    mascotas=Recetum.where("mascota_id=?",@mascotum.id)
    mascotas.each do |m|
      trat=Tratamiento.where("receta_id=?",m.id)
    trat.each do |m|
      m.destroy
    end 
      m.destroy
    end  
    @mascotum.destroy
    respond_to do |format|
      format.html { redirect_to mascota_url, notice: 'Mascotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mascotum
      @mascotum = Mascotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mascotum_params
      params.require(:mascotum).permit(:nombre, :image, :doctor_id, :duenio_id)
    end
end
