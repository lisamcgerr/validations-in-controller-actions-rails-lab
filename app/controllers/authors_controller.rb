class AuthorsController < ApplicationController
  def author
    @author = Author.find(params[:id])
  end

  def new_author
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
