class AuthenticationsController < ApplicationController
  before_action :set_authentication, only: [:show, :edit, :update, :destroy]

  # GET /authentications
  # GET /authentications.json
  def index
    @authentications = Authentication.all
  end

  # GET /authentications/1
  # GET /authentications/1.json
  def show
  end

  # GET /authentications/new
  def new
    @authentication = Authentication.new
  end

  # GET /authentications/1/edit
  def edit
  end

  # POST /authentications
  # POST /authentications.json
  def create
    render :text =>  request.env["omniauth.auth"].to_yaml 

    # @authentication = Authentication.new(authentication_params)



    # respond_to do |format|
    #   if @authentication.save
    #     format.html { redirect_to @authentication, notice: 'Authentication was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @authentication }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @authentication.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /authentications/1
  # PATCH/PUT /authentications/1.json
  def update
    respond_to do |format|
      if @authentication.update(authentication_params)
        format.html { redirect_to @authentication, notice: 'Authentication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @authentication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    @authentication.destroy
    respond_to do |format|
      format.html { redirect_to authentications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authentication
      @authentication = Authentication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authentication_params
      params.require(:authentication).permit(:user_id, :provider, :uid, :index, :create, :destroy)
    end
end
