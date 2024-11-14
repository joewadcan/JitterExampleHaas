class JeetsController < ApplicationController
  before_action :set_jeet, only: %i[ show edit update destroy ]

  # GET /jeets or /jeets.json
  def index
    @jeets = Jeet.all
  end

  # GET /jeets/1 or /jeets/1.json
  def show
  end

  # GET /jeets/new
  def new
    @jeet = Jeet.new
  end

  # GET /jeets/1/edit
  def edit
  end

  # POST /jeets or /jeets.json
  def create
    @jeet = Jeet.new(jeet_params)

    respond_to do |format|
      if @jeet.save
        format.html { redirect_to jeet_url(@jeet), notice: "Jeet was successfully created." }
        format.json { render :show, status: :created, location: @jeet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jeets/1 or /jeets/1.json
  def update
    respond_to do |format|
      if @jeet.update(jeet_params)
        format.html { redirect_to jeet_url(@jeet), notice: "Jeet was successfully updated." }
        format.json { render :show, status: :ok, location: @jeet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jeets/1 or /jeets/1.json
  def destroy
    @jeet.destroy!

    respond_to do |format|
      format.html { redirect_to jeets_url, notice: "Jeet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jeet
      @jeet = Jeet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jeet_params
      params.require(:jeet).permit(:content)
    end
end
