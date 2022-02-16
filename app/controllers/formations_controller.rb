class FormationsController < ApplicationController

  def index
    @formations = Formation.all
  end

  def show
    @formation = Formation.find(params[:id])
  end

  def new
    @formation = Formation.new
  end

  def create
    @formation = Formation.new(resto_params)

    if @formation.save
      redirect_to formations_path
    else
      render :new
    end
  end

  def edit
    @formation = Formation.find(params[:id])
  end

  def update
    @formation = Formation.find(params[:id])
    @formation.update(resto_params)
    redirect_to formations_path
  end




  def destroy
    @formation = Formation.find(params[:id])
    @formation.destroy
    redirect_to formations_path
  end

  private

  def resto_params
    params.require(:formation).permit(:titre, :date, :prix, :nb_pax, :lieu, :description, :url)
  end

end
