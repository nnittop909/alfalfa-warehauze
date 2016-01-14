class BillableMaterialsController < ApplicationController
  before_action :set_billable_material, only: [:show, :edit, :update, :destroy]

  def edit
    @project = Project.find(params[:project_id])
    @contractors = Contractor.all
  end
  def new
    @project =  Project.find(params[:project_id])
    @billable_material = @project.billable_materials.build
  end

  def create
    @project =  Project.find(params[:project_id])
    @billable_material = @project.billable_materials.create(billable_material_params)
    if @billable_material.save
      @billable_material.update_quantity_of_material_on_save
      redirect_to @project, notice: "Material allocated successfully."
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    if @billable_material.destroy
      @billable_material.update_quantity_of_material_on_destroy
      redirect_to @project, notice: 'Material was successfully deleted.'
    end
  end

  private
  def set_billable_material
    @billable_material =  BillableMaterial.find(params[:id])
  end

  def billable_material_params
    params.require(:billable_material).permit(:quantity, :material_id, :contractor_id )
  end
end
