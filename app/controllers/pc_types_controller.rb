class PcTypesController < ApplicationController
  before_action :set_pc_type, only: %i[ show edit update destroy ]

  # GET /pc_types or /pc_types.json
  def index
    @pc_types = PcType.all
  end

  # GET /pc_types/1 or /pc_types/1.json
  def show
  end

  # GET /pc_types/new
  def new
    @pc_type = PcType.new
  end

  # GET /pc_types/1/edit
  def edit
  end

  # POST /pc_types or /pc_types.json
  def create
    @pc_type = PcType.new(pc_type_params)

    respond_to do |format|
      if @pc_type.save
        format.html { redirect_to pc_type_url(@pc_type), notice: "Pc type was successfully created." }
        format.json { render :show, status: :created, location: @pc_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_types/1 or /pc_types/1.json
  def update
    respond_to do |format|
      if @pc_type.update(pc_type_params)
        format.html { redirect_to pc_type_url(@pc_type), notice: "Pc type was successfully updated." }
        format.json { render :show, status: :ok, location: @pc_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_types/1 or /pc_types/1.json
  def destroy
    @pc_type.destroy

    respond_to do |format|
      format.html { redirect_to pc_types_url, notice: "Pc type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_type
      @pc_type = PcType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pc_type_params
      params.require(:pc_type).permit(:name, :acronym, :)
    end
end
