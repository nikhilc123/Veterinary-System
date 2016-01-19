class PettypesController < ApplicationController
  before_action :set_pettype, only: [:show, :edit, :update, :destroy]

  # GET /pettypes
  # GET /pettypes.json
  def index
    @pettypes = Pettype.all
  end

  # GET /pettypes/1
  # GET /pettypes/1.json
  def show
  end

  # GET /pettypes/new
  def new
    @pettype = Pettype.new
  end

  # GET /pettypes/1/edit
  def edit
  end

  # POST /pettypes
  # POST /pettypes.json
  def create
    @pettype = Pettype.new(pettype_params)

    respond_to do |format|
      if @pettype.save
        format.html { redirect_to @pettype, notice: 'Pettype was successfully created.' }
        format.json { render :show, status: :created, location: @pettype }
      else
        format.html { render :new }
        format.json { render json: @pettype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pettypes/1
  # PATCH/PUT /pettypes/1.json
  def update
    respond_to do |format|
      if @pettype.update(pettype_params)
        format.html { redirect_to @pettype, notice: 'Pettype was successfully updated.' }
        format.json { render :show, status: :ok, location: @pettype }
      else
        format.html { render :edit }
        format.json { render json: @pettype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pettypes/1
  # DELETE /pettypes/1.json
  def destroy
    @pettype.destroy
    respond_to do |format|
      format.html { redirect_to pettypes_url, notice: 'Pettype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pettype
      @pettype = Pettype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pettype_params
      params.require(:pettype).permit(:name)
    end
end
