class BiddingsController < ApplicationController
  before_action :set_bidding, only: [:show, :edit, :update, :destroy]

  # GET /biddings
  # GET /biddings.json
  def index
    @biddings = Bidding.all
  end

  # GET /biddings/1
  # GET /biddings/1.json
  def show
  end

  # GET /biddings/new
  def new
    @project = Project.find(params[:project_id])
    @bidding = @project.build_bidding
    @bidding.bidders.build
  end

  # GET /biddings/1/edit
  def edit
    @project = Project.find(params[:project_id])
  end

  # POST /biddings
  # POST /biddings.json
  def create
    @project = Project.find(params[:project_id])
    @bidding = @project.create_bidding(bidding_params)

    respond_to do |format|
      if @bidding.save
        format.html { redirect_to @project, notice: 'Bidding was successfully created.' }
        format.json { render :show, status: :created, location: @bidding }
      else
        format.html { render :new }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biddings/1
  # PATCH/PUT /biddings/1.json
  def update
    respond_to do |format|
      if @bidding.update(bidding_params)
        format.html { redirect_to @bidding.project, notice: 'Bidding was successfully updated.' }
        format.json { render :show, status: :ok, location: @bidding }
      else
        format.html { render :edit }
        format.json { render json: @bidding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biddings/1
  # DELETE /biddings/1.json
  def destroy
    @bidding.destroy
    respond_to do |format|
      format.html { redirect_to biddings_url, notice: 'Bidding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bidding
      @bidding = Bidding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bidding_params
      params.require(:bidding).permit(:bid_expense_ids =>[], bidder_attributes:[:name])
    end
end
