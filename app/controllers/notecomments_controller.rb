class NotecommentsController < ApplicationController
  def create
    @note = Note.find(params[:note_id])
    @comment = @note.notecomments.create(comment_params)
    redirect_to note_path(@note)
  end

    private def comment_params
      params.require(:notecomment).permit(:body)
    end
end
