class RelationshipsController < ApplicationController
    def create
        user = User.find(params[:following_id])
        current_user.follow(user)
        redirect_to user
    end
end
