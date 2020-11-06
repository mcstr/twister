class TwistsController < ApplicationController
  before_action :set_twist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /twists
  # GET /twists.json
  def index
    @twists = Twist.all.order("created_at DESC")
    @twist = Twist.new
  end

  # GET /twists/1
  # GET /twists/1.json
  def show
  end

  # GET /twists/new
  def new
    @twist = current_user.twists.build
  end

  # GET /twists/1/edit
  def edit
  end

  # POST /twists
  # POST /twists.json
  def create
    @twist = current_user.twists.build(twist_params)

    respond_to do |format|
      if @twist.save
        format.html { redirect_to root_path, notice: 'Twist was successfully created.' }
        format.json { render :show, status: :created, location: @twist }
      else
        format.html { render :new }
        format.json { render json: @twist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twists/1
  # PATCH/PUT /twists/1.json
  def update
    respond_to do |format|
      if @twist.update(twist_params)
        format.html { redirect_to @twist, notice: 'Twist was successfully updated.' }
        format.json { render :show, status: :ok, location: @twist }
      else
        format.html { render :edit }
        format.json { render json: @twist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twists/1
  # DELETE /twists/1.json
  def destroy
    @twist.destroy
    respond_to do |format|
      format.html { redirect_to twists_url, notice: 'Twist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twist
      @twist = Twist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twist_params
      params.require(:twist).permit(:twist)
    end
end
