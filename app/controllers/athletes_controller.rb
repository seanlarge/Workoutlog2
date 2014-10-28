class AthletesController < ApplicationController
  skip_before_action :require_signin, only: [:new, :create]
  before_action :set_athlete, only: [:show, :edit, :update, :destroy]


  # GET /athletes
  # GET /athletes.json
  def index
    @athletes = Athlete.all
  end

  # GET /athletes/1
  # GET /athletes/1.json
  def show
    @athletes = Athlete.find(params[:id])
  end

  # GET /athletes/new
  def new
    @athlete = Athlete.new
  end

  # GET /athletes/1/edit
  def edit
  end

  # POST /athletes
  # POST /athletes.json
  def create
    @athlete = Athlete.new(athlete_params)

    respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'Athlete was successfully created.' }
        format.json { render :show, status: :created, location: @athlete }
      else
        format.html { render :new }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /athletes/1
  # PATCH/PUT /athletes/1.json
  def update
    respond_to do |format|
      if @athlete.update(athlete_params)
        format.html { redirect_to @athlete, notice: 'Athlete was successfully updated.' }
        format.json { render :show, status: :ok, location: @athlete }
      else
        format.html { render :edit }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athletes/1
  # DELETE /athletes/1.json
  def destroy
    @athlete.destroy
    respond_to do |format|
      format.html { redirect_to athletes_url, notice: 'Athlete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athlete_params
      params.require(:athlete).permit(:name, :email, :password, :password_confirmation, :age, :height, :weight, :body_mass_index, :blood_pressure, :cholesterol)
    end

end
