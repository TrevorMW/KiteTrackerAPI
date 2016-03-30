class Api::V1::SightingsController < ApplicationController
  before_action :set_api_v1_sighting, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, :with => :no_record


  def index
    @sightings = Api::V1::Sighting.all()

    if @sightings
      respond_to do |format|
        format.json
      end
    end
  end

  def show
    @sighting = Api::V1::Sighting.find( params[:id] )
    @bird     = Api::V1::Bird.find( @sighting.sighting_bird_type )

    respond_to do |format|
      format.json
    end
  end

  def create
    @api_v1_sighting = Api::V1::Sighting.new(api_v1_sighting_params)

    respond_to do |format|
      if @api_v1_sighting.save
        format.html { redirect_to @api_v1_sighting, notice: 'Sighting was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_sighting }
      else
        format.html { render :new }
        format.json { render json: @api_v1_sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @api_v1_sighting.update( api_v1_sighting_params )
        format.html { redirect_to @api_v1_sighting, notice: 'Sighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_sighting }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @api_v1_sighting.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_sightings_url, notice: 'Sighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def no_record
    render json: {error: "No sighting found."}, status: 404
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_sighting
      @api_v1_sighting = Api::V1::Sighting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_sighting_params
      params.fetch(:api_v1_sighting, {})
    end
end
