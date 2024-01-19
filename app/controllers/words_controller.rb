class WordsController < ApplicationController
  def index
    @words = Word.all
    @word = Word.new
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
      if @word.save
        redirect_to words_path
      else
        @words = Word.all
        render :index, status: :unprocessable_entity
      end

  end

  

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  private

  def word_params
    params.require(:word).permit(:word)
  end
end
