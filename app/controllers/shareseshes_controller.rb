class ShareseshesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  # GET /shareseshes
  def index
    @shareseshes = Sharesesh.all
  end

  # GET /shareseshes/1
  def show
    @sharesesh = Sharesesh.find(params[:id])
  end

  # GET /shareseshes/new
  def new
    @sharesesh = current_user.shareseshes.new
  end

  # GET /shareseshes/1/edit
  def edit
    @sharesesh = current_user.shareseshes.find(params[:id])
  end

  # POST /shareseshes
  def create
    @sharesesh = current_user.shareseshes.new(sharesesh_params)
    if @sharesesh.save
      redirect_to @sharesesh, notice: 'Sharesesh was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shareseshes/1
  def update
    @sharesesh = current_user.shareseshes.find(params[:id])
    if @sharesesh.update(sharesesh_params)
      redirect_to @sharesesh, notice: 'Sharesesh was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shareseshes/1
  def destroy
    @sharesesh = current_user.shareseshes.find(params[:id])
    @sharesesh.destroy
      redirect_to shareseshes_url, notice: 'Sharesesh was successfully destroyed.'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def sharesesh_params
      params.require(:sharesesh).permit(:when, :where, :subject, :yoursesh, :image)
    end

end
