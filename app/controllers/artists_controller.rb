class ArtistsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        render json: Artist.all
    end

end
