class SplunksController < ApplicationController
  before_action :set_splunk, only: %i[ show edit update destroy ]

  # GET /splunks or /splunks.json
  def index
    @splunks = Splunk.all
  end

  # GET /splunks/1 or /splunks/1.json
  def show
  end

  def count
    @splunk.content.length
    end

  # GET /splunks/new
  def new
    @splunk = Splunk.new
  end

  # GET /splunks/1/edit
  def edit
  end

  # POST /splunks or /splunks.json
  def create
    @splunk = Splunk.new(splunk_params)

    respond_to do |format|
      if @splunk.save
        format.html { redirect_to splunk_url(@splunk), notice: "Splunk was successfully created." }
        format.json { render :show, status: :created, location: @splunk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @splunk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /splunks/1 or /splunks/1.json
  def update
    respond_to do |format|
      if @splunk.update(splunk_params)
        format.html { redirect_to splunk_url(@splunk), notice: "Splunk was successfully updated." }
        format.json { render :show, status: :ok, location: @splunk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @splunk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splunks/1 or /splunks/1.json
  def destroy
    @splunk.destroy!

    respond_to do |format|
      format.html { redirect_to splunks_url, notice: "Splunk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_splunk
      @splunk = Splunk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def splunk_params
      params.require(:splunk).permit(:content)
    end
end
