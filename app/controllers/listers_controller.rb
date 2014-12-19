class ListersController < ApplicationController
  before_action :set_lister, only: [:show, :edit, :update, :destroy]

  # GET /listers
  # GET /listers.json
  def index
    @listers = Lister.all
  end

  # GET /listers/1
  # GET /listers/1.json
  def show
  end

  # GET /listers/new
  def new
    @lister = Lister.new
  end

  # GET /listers/1/edit
  def edit
  end

  # POST /listers
  # POST /listers.json
  def create
    @lister = Lister.new(lister_params)

    respond_to do |format|
      if @lister.save
        format.html { redirect_to @lister, notice: 'Lister was successfully created.' }
        format.json { render :show, status: :created, location: @lister }
      else
        format.html { render :new }
        format.json { render json: @lister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listers/1
  # PATCH/PUT /listers/1.json
  def update
    respond_to do |format|
      if @lister.update(lister_params)
        format.html { redirect_to @lister, notice: 'Lister was successfully updated.' }
        format.json { render :show, status: :ok, location: @lister }
      else
        format.html { render :edit }
        format.json { render json: @lister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listers/1
  # DELETE /listers/1.json
  def destroy
    @lister.destroy
    respond_to do |format|
      format.html { redirect_to listers_url, notice: 'Lister was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lister
      @lister = Lister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lister_params
      params.require(:lister).permit(:user_id, :movie_id, :vu)
    end
end
