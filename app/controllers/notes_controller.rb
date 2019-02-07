class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.build(note_params)
  end


  def import
    helpers.import_notes(params[:note][:file])
    redirect_to candidates_url
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
