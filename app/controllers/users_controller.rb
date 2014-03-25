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

  def set_twitter_token
    @user = current_user
    auth_hash = request.env['omniauth.auth']
    accesstoken = auth_hash["credentials"]["token"]
    accesssecret = auth_hash["credentials"]["secret"]
    @user.twittertoken = accesstoken
    @user.twittersecret = accesssecret
    @user.save
    # render :json => auth_hash
    # raise auth_hash.inspect
    redirect_to root_path
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def social_params
    params.require(:user).permit(:twitter, :instagram, :pinterest)
  end

end
