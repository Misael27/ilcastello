class ShowcarsController < ApplicationController
  before_action :set_showcar, only: [:show, :edit, :update, :destroy]
  #before_action :init
  before_action :initvar

  @initialized = false

  def initvar
    @views = Template.all
  end


  #i'm creating 3 cars to the showcar
  def init

        newCar = Showcar.create(name: "Reventon",
        description: "It was the most expensive Lamborghini road car until the Lamborghini Sesto Elemento was launched, costing two million dollars (~$1.5 million, or ~£840,000). Its top speed was recorded in UAE at 221 miles per hour (355.7 km/h).",
        photo_link: "reventon.jpg")
        newCar.save

        newCar = Showcar.create(name: "Diablo",
        description: "The Lamborghini Diablo is a high-performance mid-engined sports car that was built by Italian automaker Lamborghini between 1990 and 2001. It was the first Lamborghini capable of attaining a top speed in excess of 200 miles per hour (320 km/h). After the end of its production run in 2001, the Diablo was replaced by the Lamborghini Murciélago. Diablo means @\"devil@\" in Spanish.",
        photo_link: "diablo.jpg")
        newCar.save

        newCar = Showcar.create(name: "Veneno",
        description: "Lamborthini Veneno is consistently focused on optimum aerodynamics and cornering stability, giving the Veneno the real dynamic experience of a racing prototype, yet it is full homologated for the road.",
        photo_link: "veneno.jpg")
        newCar.save

  end
  # GET /showcars
  # GET /showcars.json
  def index
    @showcars = Showcar.all
  end

  # GET /showcars/1
  # GET /showcars/1.json
  def show
  end

  # GET /showcars/new
  def new
    @showcar = Showcar.new
  end

  # GET /showcars/1/edit
  def edit
  end

  # POST /showcars
  # POST /showcars.json
  def create
    @showcar = Showcar.new(showcar_params)

    respond_to do |format|
      if @showcar.save
        format.html { redirect_to @showcar, notice: 'Showcar was successfully created.' }
        format.json { render :show, status: :created, location: @showcar }
      else
        format.html { render :new }
        format.json { render json: @showcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showcars/1
  # PATCH/PUT /showcars/1.json
  def update
    respond_to do |format|
      if @showcar.update(showcar_params)
        format.html { redirect_to @showcar, notice: 'Showcar was successfully updated.' }
        format.json { render :show, status: :ok, location: @showcar }
      else
        format.html { render :edit }
        format.json { render json: @showcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showcars/1
  # DELETE /showcars/1.json
  def destroy
    @showcar.destroy
    respond_to do |format|
      format.html { redirect_to showcars_url, notice: 'Showcar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showcar
      @showcar = Showcar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showcar_params
      params.require(:showcar).permit(:name, :description, :photo_link)
    end
end
