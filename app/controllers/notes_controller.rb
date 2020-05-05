class NotesController < ApplicationController
  def index
    @notes = Note.all

    @notegroups = Notegroup.all

  end

  # def show
  #   @note = Note.find(params[:id])
  # end

  def new
    @note = Note.new
    @user = current_user


  end

  def create
    @note = Note.new(note_params)
    @user = current_user
    @note.user = @user
    if @note.save
      redirect_to notes_path
    else
      render :new
    end


  end

  def destroy
    @note = Note.find(params[:id])
    @user = @note.user
    @note.destroy
    redirect_to notes_path
  end

  def note_params
    params.require(:note).permit(:title, :content, :date)
  end

end
