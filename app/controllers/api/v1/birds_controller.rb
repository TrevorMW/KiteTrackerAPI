class Api::V1::BirdsController < ApplicationController
  before_action :set_api_v1_bird, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/birds
  # GET /api/v1/birds.json
  def index
    @api_v1_birds = Api::V1::Bird.all
  end

  # GET /api/v1/birds/1
  # GET /api/v1/birds/1.json
  def show
  end

  # GET /api/v1/birds/new
  def new
    @api_v1_bird = Api::V1::Bird.new
  end

  # GET /api/v1/birds/1/edit
  def edit
  end

  # POST /api/v1/birds
  # POST /api/v1/birds.json
  def create
    @api_v1_bird = Api::V1::Bird.new(api_v1_bird_params)

    respond_to do |format|
      if @api_v1_bird.save
        format.html { redirect_to @api_v1_bird, notice: 'Bird was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_bird }
      else
        format.html { render :new }
        format.json { render json: @api_v1_bird.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/birds/1
  # PATCH/PUT /api/v1/birds/1.json
  def update
    respond_to do |format|
      if @api_v1_bird.update(api_v1_bird_params)
        format.html { redirect_to @api_v1_bird, notice: 'Bird was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_bird }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_bird.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/birds/1
  # DELETE /api/v1/birds/1.json
  def destroy
    @api_v1_bird.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_birds_url, notice: 'Bird was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_bird
      @api_v1_bird = Api::V1::Bird.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_bird_params
      params.fetch(:api_v1_bird, {})
    end
end
