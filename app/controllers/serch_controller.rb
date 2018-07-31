class SerchController < ApplicationController
  def index
    @q     = Note.search(params[:q])
    @note = @q.result(distinct: true)
  end
end
