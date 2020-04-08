class BloggersController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
    end

    private 
    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end
end
