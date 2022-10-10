class NovelsController < ApplicationController

    def index
    end

    def new
        @novel = Novel.new if @novel.nil?
    end

    def create
        @novel = Novel.new(novel_params)
        @novel.valid?
        render :new
    end

    private

        def novel_params
            params.require(:novel).permit(:name, :description, :cover)
        end

end
