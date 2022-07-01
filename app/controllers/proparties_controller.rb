class PropartiesController < ApplicationController
  before_action :set_proparty, only: %i[ show edit update destroy ]
  before_action :set_sidebar, except: [:show]

  # GET /proparties or /proparties.json
  def index
    @proparties = Proparty.all
  end

  # GET /proparties/1 or /proparties/1.json
  def show
    @agent = @proparty.account
  end

  # GET /proparties/new
  def new
    @proparty = Proparty.new
  end

  # GET /proparties/1/edit
  def edit
  end

  # POST /proparties or /proparties.json
  def create
    @proparty = Proparty.new(proparty_params)

    respond_to do |format|
      if @proparty.save
        format.html { redirect_to proparty_url(@proparty), notice: "Proparty was successfully created." }
        format.json { render :show, status: :created, location: @proparty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proparties/1 or /proparties/1.json
  def update
    respond_to do |format|
      if @proparty.update(proparty_params)
        format.html { redirect_to proparty_url(@proparty), notice: "Proparty was successfully updated." }
        format.json { render :show, status: :ok, location: @proparty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proparties/1 or /proparties/1.json
  def destroy
    @proparty.destroy

    respond_to do |format|
      format.html { redirect_to proparties_url, notice: "Proparty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proparty
      @proparty = Proparty.find(params[:id])
    end

    def set_sidebar
      @show_sidebar = true
    end

    # Only allow a list of trusted parameters through.
    def proparty_params
      params.require(:proparty).permit(:name, :address, :price, :rooms, :bathroom, :photo, :photo_cache)
    end
end
