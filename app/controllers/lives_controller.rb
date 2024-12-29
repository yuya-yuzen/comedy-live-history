class LivesController < ApplicationController
  before_action :set_life, only: %i[ show edit update destroy ]

  # GET /lives or /lives.json
  def index
    @lives = Live.all.order(date: :asc)
  end

  # GET /lives/1 or /lives/1.json
  def show
  end

  # GET /lives/new
  def new
    @life = Live.new
  end

  # GET /lives/1/edit
  def edit
  end

  # POST /lives or /lives.json
  def create
    @life = Live.new(life_params)

    respond_to do |format|
      if @life.save
        format.html { redirect_to @life, notice: "Live was successfully created." }
        format.json { render :show, status: :created, location: @life }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lives/1 or /lives/1.json
  def update
    respond_to do |format|
      if @life.update(life_params)
        format.html { redirect_to @life, notice: "Live was successfully updated." }
        format.json { render :show, status: :ok, location: @life }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lives/1 or /lives/1.json
  def destroy
    @life.destroy!

    respond_to do |format|
      format.html { redirect_to lives_path, status: :see_other, notice: "Live was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life
      @life = Live.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def life_params
      params.require(:life).permit(:name, :date)
    end
end
