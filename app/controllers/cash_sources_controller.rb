class CashSourcesController < ApplicationController
  before_action :set_cash_source, only: [:show, :edit, :update, :destroy]

  # GET /cash_sources
  # GET /cash_sources.json
  def index
    @cash_sources = CashSource.all
  end

  # GET /cash_sources/1
  # GET /cash_sources/1.json
  def show
  end

  # GET /cash_sources/new
  def new
    @petty_cash = PettyCash.find(params[:petty_cash_id])
    @cash_source = @petty_cash.cash_sources.build
  end

  # GET /cash_sources/1/edit
  def edit
  end

  # POST /cash_sources
  # POST /cash_sources.json
  def create
    @petty_cash = PettyCash.find(params[:petty_cash_id])
    @cash_source = @petty_cash.cash_sources.create(cash_source_params)

    respond_to do |format|
      if @cash_source.save
        format.html { redirect_to @petty_cash, notice: 'Cash source was successfully created.' }
        format.json { render :show, status: :created, location: @cash_source }
      else
        format.html { render :new }
        format.json { render json: @cash_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cash_sources/1
  # PATCH/PUT /cash_sources/1.json
  def update
    respond_to do |format|
      if @cash_source.update(cash_source_params)
        format.html { redirect_to @cash_source, notice: 'Cash source was successfully updated.' }
        format.json { render :show, status: :ok, location: @cash_source }
      else
        format.html { render :edit }
        format.json { render json: @cash_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_sources/1
  # DELETE /cash_sources/1.json
  def destroy
    @petty_cash = PettyCash.find(params[:petty_cash_id])
    @cash_source.destroy
    respond_to do |format|
      format.html { redirect_to @petty_cash, notice: 'Cash source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash_source
      @cash_source = CashSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cash_source_params
      params.require(:cash_source).permit(:amount, :description)
    end
end
