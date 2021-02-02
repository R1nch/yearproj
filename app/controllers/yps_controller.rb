class YpsController < ApplicationController
  before_action :set_yp, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /yps or /yps.json
  def index
    @yps = Yp.all
  end

  # GET /yps/1 or /yps/1.json
  def show
  end

  # GET /yps/new
  def new
    @yp = Yp.new
  end

  # GET /yps/1/edit
  def edit
  end

  # POST /yps or /yps.json
  def create
    @yp = Yp.new(yp_params)

    respond_to do |format|
      if @yp.save
        format.html { redirect_to @yp, notice: "Контакт был успешно создан." }
        format.json { render :show, status: :created, location: @yp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @yp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yps/1 or /yps/1.json
  def update
    respond_to do |format|
      if @yp.update(yp_params)
        format.html { redirect_to @yp, notice: "Контакт был успешно обновлен." }
        format.json { render :show, status: :ok, location: @yp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @yp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yps/1 or /yps/1.json
  def destroy
    @yp.destroy
    respond_to do |format|
      format.html { redirect_to yps_url, notice: "Контакт был успешно удален." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yp
      @yp = Yp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yp_params
      params.require(:yp).permit(:first_name, :last_name, :email, :phone, :socnet, :user_id)
    end
end
