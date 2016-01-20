class BidCollectionsController < ApplicationController
  before_action :set_bid_collection, only: [:show, :edit, :update, :destroy]

  # GET /bid_collections
  # GET /bid_collections.json
  def index
    @bid_collections = BidCollection.all
  end

  # GET /bid_collections/1
  # GET /bid_collections/1.json
  def show
  end

  # GET /bid_collections/new
  def new
    @project = Project.find(params[:project_id])
    @bid_collection = @project.bid_collections.build
  end

  # GET /bid_collections/1/edit
  def edit
  end

  # POST /bid_collections
  # POST /bid_collections.json
  def create
    @project = Project.find(params[:project_id])
    @bid_collection = @project.bid_collections.create(bid_collection_params)

    respond_to do |format|
      if @bid_collection.save
        format.html { redirect_to @project, notice: 'Bid collection was successfully created.' }
        format.json { render :show, status: :created, location: @bid_collection }
      else
        format.html { render :new }
        format.json { render json: @bid_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bid_collections/1
  # PATCH/PUT /bid_collections/1.json
  def update
    respond_to do |format|
      if @bid_collection.update(bid_collection_params)
        format.html { redirect_to @bid_collection, notice: 'Bid collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid_collection }
      else
        format.html { render :edit }
        format.json { render json: @bid_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_collections/1
  # DELETE /bid_collections/1.json
  def destroy
    @bid_collection.destroy
    respond_to do |format|
      format.html { redirect_to bid_collections_url, notice: 'Bid collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_collection
      @bid_collection = BidCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_collection_params
      params.require(:bid_collection).permit(:bid_amount_id, :billing_name, :amount)
    end
end
