class GiveawaysController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

    def index
        render json: Giveaway.all
    end

end
