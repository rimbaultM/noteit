class NotesController < ApplicationController
  def index
    @note = Notes.all
  end
end
