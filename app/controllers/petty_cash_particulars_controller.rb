class PettyCashParticularsController < ApplicationController
  before_action :set_petty_cash_particular, only: [:show, :edit, :update, :destroy]

  # GET /petty_cash_particulars
  # GET /petty_cash_particulars.json
  def index
    @petty_cash_particulars = PettyCashParticular.all
  end

  # GET /petty_cash_particulars/1
  # GET /petty_cash_particulars/1.json
  def show
  end

  # GET /petty_cash_particulars/new
  def new
    @petty_cash = PettyCash.find(params[:petty_cash_id])
    @petty_cash_particular = @petty_cash.petty_cash_particulars.build
  end

  # GET /petty_cash_particulars/1/edit
  def edit
  end

  # POST /petty_cash_particulars
  # POST /petty_cash_particulars.json
  def create
    @petty_cash = PettyCash.find(params[:petty_cash_id])
    @petty_cash_particular = @petty_cash.petty_cash_particulars.create(petty_cash_particular_params)

    respond_to do |format|
      if @petty_cash_particular.save
        format.html { redirect_to @petty_cash, notice: 'Petty cash particular was successfully created.' }
        format.json { render :show, status: :created, location: @petty_cash_particular }
      else
        format.html { render :new }
        format.json { render json: @petty_cash_particular.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @petty_cash = PettyCash.find(params[:petty_cash_id])
    @petty_cash_particular.destroy
    respond_to do |format|
      format.html { redirect_to @petty_cash, notice: 'Petty cash particular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petty_cash_particular
      @petty_cash_particular = PettyCashParticular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petty_cash_particular_params
      params.require(:petty_cash_particular).permit(:particular, :quantity, :unit, :amount)
    end
end
