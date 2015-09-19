class PhoneticsController < ApplicationController
  before_filter :set_phonetic, only: [:show, :edit, :update]

  def new
    @phonetic = Phonetic.new
  end

  def show; end

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
    if @phonetic.update(phonetic_params)
      flash[:notice] = "Got it, working on it"
      redirect_to @phonetic
    else
      flash[:error] = "Can't be blank"
      redirect_to root_path
    end
  end

  private

  def set_phonetic
    @phonetic = Phonetic.find_by_slug!(params[:id])
  end

  def phonetic_params
    params.require(:phonetic).permit(:word)
  end

end

