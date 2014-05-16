class SolesController < ApplicationController
  before_action :set_sole, only: [:show, :edit, :update, :destroy]

  # GET /soles
  # GET /soles.json
  def index
    @soles = Sole.all
  end

  # GET /soles/1
  # GET /soles/1.json
  def show
  end

  # GET /soles/new
  def new
    @sole = Sole.new
  end

  # GET /soles/1/edit
  def edit
  end

  # POST /soles
  # POST /soles.json
  def create
    @sole = Sole.new(sole_params)

    respond_to do |format|
      if @sole.save
        format.html { redirect_to @sole, notice: 'Sole was successfully created.' }
        format.json { render :show, status: :created, location: @sole }
      else
        format.html { render :new }
        format.json { render json: @sole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soles/1
  # PATCH/PUT /soles/1.json
  def update
    respond_to do |format|
      if @sole.update(sole_params)
        format.html { redirect_to @sole, notice: 'Sole was successfully updated.' }
        format.json { render :show, status: :ok, location: @sole }
      else
        format.html { render :edit }
        format.json { render json: @sole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soles/1
  # DELETE /soles/1.json
  def destroy
    @sole.destroy
    respond_to do |format|
      format.html { redirect_to soles_url, notice: 'Sole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sole
      @sole = Sole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sole_params
      params.require(:sole).permit(:left, :activated)
    end
end
