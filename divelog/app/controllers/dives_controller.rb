class DivesController < ApplicationController
  before_action :set_dive, only: [:show, :edit, :update, :destroy]

  # GET /dives
  # GET /dives.json
  def index
    @dives = Dive.all
  end

  # GET /dives/1
  # GET /dives/1.json
  def show
  end

  # GET /dives/new
  def new
    @dive = Dive.new
  end

  # GET /dives/1/edit
  def edit
  end

  # POST /dives
  # POST /dives.json
  def create
    @dive = Dive.new(dive_params)

    respond_to do |format|
      if @dive.save
        format.html { redirect_to @dive, notice: 'Dive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dive }
      else
        format.html { render action: 'new' }
        format.json { render json: @dive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dives/1
  # PATCH/PUT /dives/1.json
  def update
    respond_to do |format|
      if @dive.update(dive_params)
        format.html { redirect_to @dive, notice: 'Dive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dives/1
  # DELETE /dives/1.json
  def destroy
    @dive.destroy
    respond_to do |format|
      format.html { redirect_to dives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dive
      @dive = Dive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dive_params
      params.require(:dive).permit(:dive_number, :depth, :pressure_group, :weight)
    end
end
