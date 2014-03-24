class UsersController < ApplicationController

  def sociallinks
    @user = current_user
  end

  def socialupdate
    @user = current_user
    respond_to do |format|
      if @user.update(social_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end  
  end


  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def social_params
    params.require(:user).permit(:twitter, :instagram, :pinterest)
  end

end
