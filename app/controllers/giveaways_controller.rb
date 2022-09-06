class GiveawaysController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

    def index
        render json: Giveaway.all
    end

    def show
        puts params
        puts :artist_id
        giveaway = Giveaway.find_by(params[:artist_id])
        render json: giveaway
    end

end
