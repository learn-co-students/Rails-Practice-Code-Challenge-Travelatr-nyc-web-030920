class BloggersController < ApplicationController
  
  def show
    @blogger = Blogger.find(params[:id])
  end
  
  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.new(blogger_params)
    @blogger.save

    flash[:messages] = @blogger.errors.full_messages
    if @blogger.valid? 
      redirect_to blogger_path(@blogger)
    else
      redirect_to new_blogger_path
    end

  end

  private
  def blogger_params
    params.require(:blogger).permit(:name,:age,:bio)
  end
  
end
