class BidderAmountsController < ApplicationController
  before_action :set_bidder_amount, only: [:show, :edit, :update, :destroy]

  # GET /bidder_amounts
  # GET /bidder_amounts.json
  def index
    @bidder_amounts = BidderAmount.all
  end

  # GET /bidder_amounts/1
  # GET /bidder_amounts/1.json
  def show
  end

  # GET /bidder_amounts/new
  def new
    @project = Project.find(params[:project_id])
    @bidder_amount = @project.bidder_amounts.build
  end

  # GET /bidder_amounts/1/edit
  def edit
  end

  # POST /bidder_amounts
  # POST /bidder_amounts.json
  def create
    @project = Project.find(params[:project_id])
    @bidder_amount = @project.bidder_amounts.create(bidder_amount_params)

    respond_to do |format|
      if @bidder_amount.save
        format.html { redirect_to @project, notice: 'Bidder amount was successfully created.' }
        format.json { render :show, status: :created, location: @bidder_amount }
      else
        format.html { render :new }
        format.json { render json: @bidder_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bidder_amounts/1
  # PATCH/PUT /bidder_amounts/1.json
  def update
    respond_to do |format|
      if @bidder_amount.update(bidder_amount_params)
        format.html { redirect_to @bidder_amount, notice: 'Bidder amount was successfully updated.' }
        format.json { render :show, status: :ok, location: @bidder_amount }
      else
        format.html { render :edit }
        format.json { render json: @bidder_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bidder_amounts/1
  # DELETE /bidder_amounts/1.json
  def destroy
    @bidder_amount.destroy
    respond_to do |format|
      format.html { redirect_to bidder_amounts_url, notice: 'Bidder amount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bidder_amount
      @bidder_amount = BidderAmount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bidder_amount_params
      params.require(:bidder_amount).permit(:amount, :bidder_id, :bid_expense_id)
    end
end
