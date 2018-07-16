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
  
  end
  def index

  end
  private def note_params
    params.require(:note).permit(:type, :title, :contents)
  end
end
