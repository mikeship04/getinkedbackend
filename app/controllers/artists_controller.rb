class ArtistsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

    def index
        render json: Artist.all
    end

    def create
        artist = Artist.create!(artist_params)
        render json: artist, status: :created
    end

    def show
        artist = Artist.find_by(id: params[:id])
        render json: artist.Giveaways
    end

    private

    def artist_params
        params.require(:artist).permit(:bio, :img_url, :instagram, :twitter, :tiktok, :facebook, :name, :youtube)
    end
end
