class MoresController < ApplicationController
  def index
    @more_notes = current_user.more_notes
  end

  def create
    more = More.new
    more.user_id = current_user.id
    more.note_id = params[:note_id]

    if more.save
      redirect_to mores_index_path
    else
      redirect_to root_path
    end
  end
end
