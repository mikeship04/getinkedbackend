class TicketsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update]

    def index
        render json: Ticket.all
    end

    def show
        giveaway = Giveaway.find_by(id: params[:id])
        render json: giveaway.tickets
    end

end
