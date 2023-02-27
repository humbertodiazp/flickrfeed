class StaticpagesController < ApplicationController
  before_action :set_staticpage, only: %i[ show edit update destroy ]


  # GET /staticpages or /staticpages.json
  def index
    @staticpages = Staticpage.all
  end

  # GET /staticpages/1 or /staticpages/1.json
  def show
   
   
  end

  # GET /staticpages/new
  def new
    @staticpage = Staticpage.new
  end

  # GET /staticpages/1/edit
  def edit
  end

  # POST /staticpages or /staticpages.json
  def create
    @staticpage = Staticpage.new(staticpage_params)
    flickr = Flickraw.new

    respond_to do |format|
      if @staticpage.save
        format.html { redirect_to staticpage_url(@staticpage), notice: "Staticpage was successfully created." }
        format.json { render :show, status: :created, location: @staticpage, :partial => 'photo', :collection =>
        flickr.photos(:tags => params[:tags], :per_page => '24')
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @staticpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staticpages/1 or /staticpages/1.json
  def update
    respond_to do |format|
      if @staticpage.update(staticpage_params)
        format.html { redirect_to staticpage_url(@staticpage), notice: "Staticpage was successfully updated." }
        format.json { render :show, status: :ok, location: @staticpage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @staticpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staticpages/1 or /staticpages/1.json
  def destroy
    @staticpage.destroy

    respond_to do |format|
      format.html { redirect_to staticpages_url, notice: "Staticpage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staticpage
      @staticpage = Staticpage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def staticpage_params
      params.require(:staticpage).permit(:flickr_id)
    end
end
