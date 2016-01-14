class EquipmentExpensesController < ApplicationController
  before_action :set_equipment_expenses, only: [:edit, :update, :destroy]

  def new
    @equipment =  Equipment.find(params[:equipment_id])
    @equipment_expense = @equipment.equipment_expenses.build
  end

  def create
    @equipment =  Equipment.find(params[:equipment_id])
    @equipment_expense = @equipment.equipment_expenses.create(equipment_expenses_params)
    if @equipment_expense.save
      redirect_to equipment_path(@equipment), notice: "Expense recorded successfully."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @equipment_expense.update(equipment_expenses_params)
      redirect_to @equipment, notice: 'Equipment expense was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @equipment = Equipment.find(params[:equipment_id])
    @equipment_expense.destroy
    respond_to do |format|
      format.html { redirect_to @equipment, notice: 'Equipment was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_equipment_expenses
    @equipment_expense = EquipmentExpense.find(params[:id])
    @equipment =  Equipment.find(params[:equipment_id])
  end

  def equipment_expenses_params
    params.require(:equipment_expense).permit(:category, :unit, :amount, :project_id, :description, :quantity)
  end
end
