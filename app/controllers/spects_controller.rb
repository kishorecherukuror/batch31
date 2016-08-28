class SpectsController < ApplicationController
  before_action :set_spect, only: [:show, :edit, :update, :destroy]

  # GET /spects
  # GET /spects.json
  def index
    @spects = Spect.all
  end

  # GET /spects/1
  # GET /spects/1.json
  def show
  end

  # GET /spects/new
  def new
    @spect = Spect.new
    binding.pry
    @brand = Brand.find params[:id] if !params[:id].nil?
  end

  # GET /spects/1/edit
  def edit
  end

  # POST /spects
  # POST /spects.json
  def create
    if !params[:brand_id].nil?
      @brand = Brand.find params[:brand_id]
      @spect = @brand.spects.new(spect_params) 
    else
      @spect = Spect.new(spect_params)
    end
    respond_to do |format|
      if @spect.save
        binding.pry
        format.html { redirect_to @spect, notice: 'Spect was successfully created.' }
        format.json { render :show, status: :created, location: @spect }
      else
        format.html { render :new }
        format.json { render json: @spect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spects/1
  # PATCH/PUT /spects/1.json
  def update
    respond_to do |format|
      if @spect.update(spect_params)
        format.html { redirect_to @spect, notice: 'Spect was successfully updated.' }
        format.json { render :show, status: :ok, location: @spect }
      else
        format.html { render :edit }
        format.json { render json: @spect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spects/1
  # DELETE /spects/1.json
  def destroy
    @spect.destroy
    respond_to do |format|
      format.html { redirect_to spects_url, notice: 'Spect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spect
      @spect = Spect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spect_params
      params.require(:spect).permit(:name, :design, :brand_id)
    end
end
