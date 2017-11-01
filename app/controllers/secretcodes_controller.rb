class SecretcodesController < ApplicationController
  before_action :set_secretcode, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /secretcodes
  # GET /secretcodes.json
  def index
    @secretcodes = Secretcode.all
  end

  # GET /secretcodes/1
  # GET /secretcodes/1.json
  def show
  end

  # GET /secretcodes/new
  def new
    @secretcode = Secretcode.new
  end

  # GET /secretcodes/1/edit
  def edit
  end

  # POST /secretcodes
  # POST /secretcodes.json

  def create_many_secret
    code = (0...50).map { ('a'..'z').to_a[rand(26)] }.join[0,6]
    if params[:secretcode][:number] 
      params[:secretcode][:number].to_i.times do |i|
        Secretcode.create(SecretCode: code)
      end
    end
      redirect_to secretcodes_path
  end

  def create
    code = (0...50).map { ('a'..'z').to_a[rand(26)] }.join[0,6]
      
      @secretcode = current_user.build_secretcode(SecretCode: code).save!
        redirect_to secretcodes_path
        
  end

  # PATCH/PUT /secretcodes/1
  # PATCH/PUT /secretcodes/1.json
  def update
    respond_to do |format|
      code = (0...50).map { ('a'..'z').to_a[rand(26)] }.join[0,6]

      if @secretcode.update(SecretCode: code)
        format.html { redirect_to @secretcode, notice: 'Secretcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @secretcode }
      else
        format.html { render :edit }
        format.json { render json: @secretcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secretcodes/1
  # DELETE /secretcodes/1.json
  def destroy
    @secretcode.destroy
    respond_to do |format|
      format.html { redirect_to secretcodes_url, notice: 'Secretcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secretcode
      @secretcode = Secretcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
end
