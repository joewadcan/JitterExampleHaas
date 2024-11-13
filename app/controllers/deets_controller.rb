class DeetsController < ApplicationController
  before_action :set_deet, only: %i[ show edit update destroy ]

  # GET /deets or /deets.json
  def index
    @deets = Deet.all
  end

  # GET /deets/1 or /deets/1.json
  def show
  end

  # GET /deets/new
  def new
    @deet = Deet.new
  end

  # GET /deets/1/edit
  def edit
  end

  # POST /deets or /deets.json
  def create
    @deet = Deet.new(deet_params)

    respond_to do |format|
      if @deet.save
        format.html { redirect_to deet_url(@deet), notice: "Deet was successfully created." }
        format.json { render :show, status: :created, location: @deet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deets/1 or /deets/1.json
  def update
    respond_to do |format|
      if @deet.update(deet_params)
        format.html { redirect_to deet_url(@deet), notice: "Deet was successfully updated." }
        format.json { render :show, status: :ok, location: @deet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deets/1 or /deets/1.json
  def destroy
    @deet.destroy!

    respond_to do |format|
      format.html { redirect_to deets_url, notice: "Deet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deet
      @deet = Deet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deet_params
      params.require(:deet).permit(:content)
    end
end
