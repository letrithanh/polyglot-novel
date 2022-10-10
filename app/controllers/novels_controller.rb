class NovelsController < ApplicationController

    def index
        @novels = Novel.all
    end

    def new
        @novel = Novel.new if @novel.nil?
    end

    def show
        @novel = Novel.find_by(id: params[:id])
    end

    def create
        @novel = Novel.new(novel_params)
        if @novel.valid?
            @novel.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

        def novel_params
            params.require(:novel).permit(:name, :description, :cover)
        end

end
