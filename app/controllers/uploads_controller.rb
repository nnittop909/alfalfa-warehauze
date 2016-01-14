class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
    # @upload =  Upload.find(params[:id])
    # send_data '/system/Rails_4_Application_Development.pdf', :filename => '#{@upload.id}.pdf', :type => 'application/pdf', :x_sendfile=>true
  end

  # GET /uploads/new
  def new
    @project =  Project.find(params[:project_id])
    @upload = @project.uploads.build
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  # POST /uploads.json
  def create
    @project =  Project.find(params[:project_id])
    @upload = @project.uploads.create(upload_params)

  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload.project, notice: 'Upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to @project, notice: 'Upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_params
      params[:upload].permit(:uploaded_file)
    end
end
