class EquipmentSchedulesController < ApplicationController
before_action :set_equipment_schedule, only: [:show, :edit, :update, :destroy]

  def index
    @schedules = EquipmentSchedule.all
  end

  def new
    @project =  Project.find(params[:project_id])
    @equipment_schedule = @project.equipment_schedules.build
  end

  def create
    @project =  Project.find(params[:project_id])
    @equipment_schedule = @project.equipment_schedules.create(equipment_schedule_params)
    if @equipment_schedule.save
      redirect_to @project, notice: "Equipment added successfully."
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @equipment_schedule.update(equipment_schedule_params)
        format.html { redirect_to @equipment_schedule.project, notice: 'Equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_schedule }
      else
        format.html { render :edit }
        format.json { render json: @equipment_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @equipment_schedule.destroy
    respond_to do |format|
      format.html { redirect_to @project, notice: 'Equipment was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
  def set_equipment_schedule
    @equipment_schedule = EquipmentSchedule.find(params[:id])
  end

  def equipment_schedule_params
    params.require(:equipment_schedule).permit(:starting_date, :end_date, :equipment_id )
  end
end
