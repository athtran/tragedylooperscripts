class CastsController < ApplicationController
  before_action :set_cast, only: [:show, :edit, :update, :destroy]

  # GET /casts
  # GET /casts.json
  def index
    @casts = Cast.all
  end

  # GET /casts/1
  # GET /casts/1.json
  def show
    @cast = Case.find(params[:cast])
    @role = Cast.find(params[:role])
  end

  # GET /casts/new
  def new
    @cast = Cast.new
  end

  # GET /casts/1/edit
  def edit
  end

  # POST /casts
  # POST /casts.json
  def create
    @cast = Cast.new(cast_params)

    respond_to do |format|
      if @cast.save
        format.html { redirect_to @cast, notice: 'Cast was successfully created.' }
        format.json { render :show, status: :created, location: @cast }
      else
        format.html { render :new }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casts/1
  # PATCH/PUT /casts/1.json
  def update
    respond_to do |format|
      if @cast.update(cast_params)
        format.html { redirect_to @cast, notice: 'Cast was successfully updated.' }
        format.json { render :show, status: :ok, location: @cast }
      else
        format.html { render :edit }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casts/1
  # DELETE /casts/1.json
  def destroy
    @cast.destroy
    respond_to do |format|
      format.html { redirect_to casts_url, notice: 'Cast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cast
      @cast = Cast.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cast_params
      params.require(:cast).permit(:id, :cast, :role, :script_id)
    end
end