class LokhisController < ApplicationController
  before_action :set_lokhi, only: [:show, :edit, :update, :destroy]

  # GET /lokhis
  # GET /lokhis.json
  def index
    @lokhis = Lokhi.all
  end

  # GET /lokhis/1
  # GET /lokhis/1.json
  def show
  end

  # GET /lokhis/new
  def new
    @lokhi = Lokhi.new
  end

  # GET /lokhis/1/edit
  def edit
  end

  # POST /lokhis
  # POST /lokhis.json
  def create
    @lokhi = Lokhi.new(lokhi_params)

    respond_to do |format|
      if @lokhi.save
        format.html { redirect_to @lokhi, notice: 'Lokhi was successfully created.' }
        format.json { render :show, status: :created, location: @lokhi }
      else
        format.html { render :new }
        format.json { render json: @lokhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lokhis/1
  # PATCH/PUT /lokhis/1.json
  def update
    respond_to do |format|
      if @lokhi.update(lokhi_params)
        format.html { redirect_to @lokhi, notice: 'Lokhi was successfully updated.' }
        format.json { render :show, status: :ok, location: @lokhi }
      else
        format.html { render :edit }
        format.json { render json: @lokhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lokhis/1
  # DELETE /lokhis/1.json
  def destroy
    @lokhi.destroy
    respond_to do |format|
      format.html { redirect_to lokhis_url, notice: 'Lokhi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lokhi
      @lokhi = Lokhi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lokhi_params
      params.require(:lokhi).permit(:name, :age)
    end
end
