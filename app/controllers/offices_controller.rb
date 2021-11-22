class OfficesController < ApplicationController
  before_action :set_office, only: [:show, :edit, :update, :destroy]

  # GET /offices
  def index
    @offices = Office.all
  end

  # GET /offices/1
  def show
  end

  # GET /offices/new
  def new
    @office = Office.new
  end

  # GET /offices/1/edit
  def edit
  end

  # Search Offices
  def search
    @offices = Office.where("room_number like ?", "%#{params[:query]}%")
    render :index
  end

  # GET /offices/1/destroy
  def destroy
    @office.destroy
    redirect_to offices_url, notice: 'Office was successfully destroyed'
    end

  # POST /offices
  def create
    @office = Office.new(office_params)

    respond_to do |format|
      if @office.save
        format.html { redirect_to @office, notice: 'Office was successfully created.' }
        format.json { render :show, status: :created, location: @office }
      else
        format.html { render :new, status: :unprocessable_entity }
	      format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end  
  end

  # PATCH/PUT /offices/1
  def update
    respond_to do |format|
      if @office.update(office_params)
        format.html { redirect_to @office, notice: 'Office was successfully updated.' }
        format.json { render :show, status: :ok, location: @office }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /offices/1
  def destroy
    @office.destroy
    respond_to do |format|
      format.html { redirect_to offices_url, notice: 'Office was successfully destroyed' }
      format.json { head :no_content}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office
      @office = Office.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def office_params
      params.require(:office).permit(:building_name, :floor_number, :room_number)
    end
end
