class NotegroupsController < ApplicationController


  def new
    @notegroup = Notegroup.new
    @user = current_user
  end

  def create
    @notegroup = Notegroup.new(notegroup_params)
    @user = current_user
    @notegroup.user = @user
    if @notegroup.save
      redirect_to notes_path
    else
      render :new
    end
  end

   def destroy
    @notegroup = Notegroup.find(params[:id])
    @user = @notegroup.user
    @notegroup.destroy
    redirect_to notes_path
  end

  private

  def notegroup_params
    params.require(:notegroup).permit(:title)
  end
end
