class NotesController < ApplicationController
  def new
    @note = Note.new
  end
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    end
  end
  def show
    @note = Note.find(params[:id])
  end
  def index
    @notes = Note.all
  end
  private def note_params
    params.require(:note).permit(:genre, :title, :contents)
  end
end
