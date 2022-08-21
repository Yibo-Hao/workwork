class Api::V1::MeController < ApplicationController
    def show
        render json: {name: 1}
    end
end
