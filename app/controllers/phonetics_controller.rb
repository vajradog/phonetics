class PhoneticsController < ApplicationController

  def new
    @phonetic = Phonetic.new
  end

  def show
    @phonetic = Phonetic.find(params[:id])
  end

  def create
    @phonetic = Phonetic.new(phonetic_params)
    if @phonetic.save
      flash[:notice] = "Got it, working on it"
      redirect_to @phonetic
    else
      flash[:error] = "Can't be blank"
      redirect_to root_path
    end
  end

  def update
    @phonetic = Phonetic.find(params[:id])
    if @phonetic.update(phonetic_params)
      flash[:notice] = "Got it, working on it"
      redirect_to @phonetic
    else
      flash[:error] = "Can't be blank"
      redirect_to root_path
    end
  end

  private

  def phonetic_params
    params.require(:phonetic).permit(:word)
  end

end

