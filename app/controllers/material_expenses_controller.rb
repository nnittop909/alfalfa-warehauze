class MaterialExpensesController < ApplicationController
  before_action :set_material_expense, only: [:show, :edit, :update, :destroy]

  # GET /material_expenses
  # GET /material_expenses.json
  def index
    @material_expenses = MaterialExpense.all
  end

  # GET /material_expenses/1
  # GET /material_expenses/1.json
  def show
  end

  # GET /material_expenses/new
  def new
    @project = Project.find(params[:project_id])
    @material_expense = @project.material_expenses.build
  end

  # GET /material_expenses/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @contractors = Contractor.all
  end

  # POST /material_expenses
  # POST /material_expenses.json
  def create
    @project = Project.find(params[:project_id])
    @material_expense = @project.material_expenses.create(material_expense_params)

    respond_to do |format|
      if @material_expense.save
        format.html { redirect_to @project, notice: 'Material expense was successfully created.' }
        format.json { render :show, status: :created, location: @material_expense }
      else
        format.html { render :new }
        format.json { render json: @material_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_expenses/1
  # PATCH/PUT /material_expenses/1.json
  def update
    respond_to do |format|
      if @material_expense.update(material_expense_params)
        format.html { redirect_to @material_expense.project, notice: 'Material expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_expense }
      else
        format.html { render :edit }
        format.json { render json: @material_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_expenses/1
  # DELETE /material_expenses/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @material_expense.destroy
    respond_to do |format|
      format.html { redirect_to @project, notice: 'Material expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_expense
      @material_expense = MaterialExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_expense_params
      params.require(:material_expense).permit(:project_id, :contractor_id, :description, :unit, :quantity, :price)
    end
end
