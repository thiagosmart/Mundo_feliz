class AdminstradorsController < ApplicationController
  before_action :set_adminstrador, only: %i[ show edit update destroy ]

  # GET /adminstradors or /adminstradors.json
  def index
    @adminstradors = Adminstrador.all
  end

  # GET /adminstradors/1 or /adminstradors/1.json
  def show
  end

  # GET /adminstradors/new
  def new
    @adminstrador = Adminstrador.new
  end

  # GET /adminstradors/1/edit
  def edit
  end

  # POST /adminstradors or /adminstradors.json
  def create
    @adminstrador = Adminstrador.new(adminstrador_params)

    respond_to do |format|
      if @adminstrador.save
        format.html { redirect_to adminstrador_url(@adminstrador), notice: "Adminstrador was successfully created." }
        format.json { render :show, status: :created, location: @adminstrador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adminstrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminstradors/1 or /adminstradors/1.json
  def update
    respond_to do |format|
      if @adminstrador.update(adminstrador_params)
        format.html { redirect_to adminstrador_url(@adminstrador), notice: "Adminstrador was successfully updated." }
        format.json { render :show, status: :ok, location: @adminstrador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adminstrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminstradors/1 or /adminstradors/1.json
  def destroy
    @adminstrador.destroy

    respond_to do |format|
      format.html { redirect_to adminstradors_url, notice: "Adminstrador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminstrador
      @adminstrador = Adminstrador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adminstrador_params
      params.require(:adminstrador).permit(:nome, :email, :senha)
    end
end
