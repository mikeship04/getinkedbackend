class GiveawaysController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update]

    def index
        render json: Giveaway.all
    end

    def show
        artist = Artist.find_by(id: params[:id])
        render json: artist.Giveaways
    end

    def update
        puts params
        artist = Artist.find(params[:id])
        artist.Giveaways.update(giveaway_params)
        render json: artist
    end

    private

    def giveaway_params
        params.require(:giveaway).permit(:header, :description, :closing_date, :img_url, :full_details)
    end

end
