class MapsController < ApplicationController
    def index
        @records = Record.where(user_id: current_user.id)
    end
end
