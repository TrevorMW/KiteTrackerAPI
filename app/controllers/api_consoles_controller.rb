class ApiConsolesController < ApplicationController
  before_action :set_api_console, only: [:show, :edit, :update, :destroy]

  # GET /api_consoles
  # GET /api_consoles.json
  def index
    @api_consoles = ApiConsole.all
  end

  # GET /api_consoles/1
  # GET /api_consoles/1.json
  def show
  end

  # GET /api_consoles/new
  def new
    @api_console = ApiConsole.new
  end

  # GET /api_consoles/1/edit
  def edit
  end

  # POST /api_consoles
  # POST /api_consoles.json
  def create
    @api_console = ApiConsole.new(api_console_params)

    respond_to do |format|
      if @api_console.save
        format.html { redirect_to @api_console, notice: 'Api console was successfully created.' }
        format.json { render :show, status: :created, location: @api_console }
      else
        format.html { render :new }
        format.json { render json: @api_console.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api_consoles/1
  # PATCH/PUT /api_consoles/1.json
  def update
    respond_to do |format|
      if @api_console.update(api_console_params)
        format.html { redirect_to @api_console, notice: 'Api console was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_console }
      else
        format.html { render :edit }
        format.json { render json: @api_console.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api_consoles/1
  # DELETE /api_consoles/1.json
  def destroy
    @api_console.destroy
    respond_to do |format|
      format.html { redirect_to api_consoles_url, notice: 'Api console was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_console
      @api_console = ApiConsole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_console_params
      params.fetch(:api_console, {})
    end
end
