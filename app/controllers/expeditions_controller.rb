class ExpeditionsController < ApplicationController

    def index
        @expeditions = Expedition.all
    end

    def new
        @expedition = Expedition.new
    end

    def create
        @expedition = Expedition.new(expedition_params)
        if @expedition.save
            redirect_to expeditions_path
        else
            render :new
        end
    end

    private

        def expedition_params
            params.require(:expedition).permit(:name, :description, :length, :difficulty, equipment: [:name])
        end
end