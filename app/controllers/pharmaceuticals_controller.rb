class PharmaceuticalsController < ApplicationController
  before_action :set_pharmaceutical, only: %i[ show edit update destroy ]

  # GET /pharmaceuticals or /pharmaceuticals.json
  def index
    @pharmaceuticals = Pharmaceutical.all
  end

  # GET /pharmaceuticals/1 or /pharmaceuticals/1.json
  def show
  end

  # GET /pharmaceuticals/new
  def new
    @pharmaceutical = Pharmaceutical.new
  end

  # GET /pharmaceuticals/1/edit
  def edit
  end

  # POST /pharmaceuticals or /pharmaceuticals.json
  def create
    @pharmaceutical = Pharmaceutical.new(pharmaceutical_params)

    respond_to do |format|
      if @pharmaceutical.save
        format.html { redirect_to pharmaceutical_url(@pharmaceutical), notice: "Pharmaceutical was successfully created." }
        format.json { render :show, status: :created, location: @pharmaceutical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pharmaceutical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmaceuticals/1 or /pharmaceuticals/1.json
  def update
    respond_to do |format|
      if @pharmaceutical.update(pharmaceutical_params)
        format.html { redirect_to pharmaceutical_url(@pharmaceutical), notice: "Pharmaceutical was successfully updated." }
        format.json { render :show, status: :ok, location: @pharmaceutical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pharmaceutical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmaceuticals/1 or /pharmaceuticals/1.json
  def destroy
    @pharmaceutical.destroy

    respond_to do |format|
      format.html { redirect_to pharmaceuticals_url, notice: "Pharmaceutical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmaceutical
      @pharmaceutical = Pharmaceutical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmaceutical_params
      params.require(:pharmaceutical).permit(:patient_id, :name, :gender, :age, :email, :phone_number, :prescription_medicines, :delivery_address)
    end
end
