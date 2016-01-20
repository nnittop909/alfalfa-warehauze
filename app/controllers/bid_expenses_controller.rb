class BidExpensesController < ApplicationController
  before_action :set_bid_expense, only: [:show, :edit, :update, :destroy]

  # GET /bid_expenses
  # GET /bid_expenses.json
  def index
    @bid_expenses = BidExpense.all
  end

  # GET /bid_expenses/1
  # GET /bid_expenses/1.json
  def show
  end

  # GET /bid_expenses/new
  def new
    @bid_expense = BidExpense.new
  end

  # GET /bid_expenses/1/edit
  def edit
  end

  # POST /bid_expenses
  # POST /bid_expenses.json
  def create
    @bid_expense = BidExpense.new(bid_expense_params)

    respond_to do |format|
      if @bid_expense.save
        format.html { redirect_to bid_expenses_path, notice: 'Bid expense was successfully created.' }
        format.json { render :show, status: :created, location: @bid_expense }
      else
        format.html { render :new }
        format.json { render json: @bid_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bid_expenses/1
  # PATCH/PUT /bid_expenses/1.json
  def update
    respond_to do |format|
      if @bid_expense.update(bid_expense_params)
        format.html { redirect_to bid_expenses_path, notice: 'Bid expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid_expense }
      else
        format.html { render :edit }
        format.json { render json: @bid_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_expenses/1
  # DELETE /bid_expenses/1.json
  def destroy
    @bid_expense.destroy
    respond_to do |format|
      format.html { redirect_to bid_expenses_url, notice: 'Bid expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_expense
      @bid_expense = BidExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_expense_params
      params.require(:bid_expense).permit(:description)
    end
end
