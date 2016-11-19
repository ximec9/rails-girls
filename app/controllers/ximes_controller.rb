class XimesController < ApplicationController
  before_action :set_xime, only: [:show, :edit, :update, :destroy]

  # GET /ximes
  # GET /ximes.json
  def index
    @ximes = Xime.all
  end

  # GET /ximes/1
  # GET /ximes/1.json
  def show
  end

  # GET /ximes/new
  def new
    @xime = Xime.new
  end

  # GET /ximes/1/edit
  def edit
  end

  # POST /ximes
  # POST /ximes.json
  def create
    @xime = Xime.new(xime_params)

    respond_to do |format|
      if @xime.save
        format.html { redirect_to @xime, notice: 'Xime was successfully created.' }
        format.json { render :show, status: :created, location: @xime }
      else
        format.html { render :new }
        format.json { render json: @xime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ximes/1
  # PATCH/PUT /ximes/1.json
  def update
    respond_to do |format|
      if @xime.update(xime_params)
        format.html { redirect_to @xime, notice: 'Xime was successfully updated.' }
        format.json { render :show, status: :ok, location: @xime }
      else
        format.html { render :edit }
        format.json { render json: @xime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ximes/1
  # DELETE /ximes/1.json
  def destroy
    @xime.destroy
    respond_to do |format|
      format.html { redirect_to ximes_url, notice: 'Xime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xime
      @xime = Xime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xime_params
      params.require(:xime).permit(:name, :description, :picture)
    end
end
