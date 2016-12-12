class PrivseshesController < ApplicationController

  # GET /privseshes
  def index
    @privseshes = current_user.privseshes.all
  end

  # GET /privseshes/1
  def show
    @privsesh = current_user.privseshes.find(params[:id])
  end

  # GET /privseshes/new
  def new
    @privsesh = current_user.privseshes.new
  end

  # GET /privseshes/1/edit
  def edit
    @privsesh = current_user.privseshes.find(params[:id])
  end

  # POST /privseshes
  def create
    @privsesh = current_user.privseshes.new(privsesh_params)
    if @privsesh.save
      redirect_to @privsesh, notice: 'Privsesh was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /privseshes/1
  def update
    @privsesh = current_user.privseshes.find(params[:id])
    if @privsesh.update(privsesh_params)
      redirect_to @privsesh, notice: 'Privsesh was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /privseshes/1
  def destroy
    @privsesh = current_user.privseshes.find(params[:id])
    @privsesh.destroy
      redirect_to privseshes_url, notice: 'Privsesh was successfully destroyed.'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def privsesh_params
      params.require(:privsesh).permit(:date, :location, :activity, :rating, :note)
    end
end
