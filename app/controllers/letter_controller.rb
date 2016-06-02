class LetterController < ApplicationController
  def create

    @letter = Letter.new(letter_params)


    if @letter.save

    else
      redirect_to root_path
    end

  end


  private
  def letter_params
    params.permit(:mail, :name)
  end
end