class TripFeaturesController < ApplicationController
  before_action :set_trip_feature, only: %i[ show edit update destroy ]

  # GET /trip_features or /trip_features.json
  def index
    @trip_features = TripFeature.all
  end

  # GET /trip_features/1 or /trip_features/1.json
  def show
  end

  # GET /trip_features/new
  def new
    @trip_feature = TripFeature.new
  end

  # GET /trip_features/1/edit
  def edit
  end

  # POST /trip_features or /trip_features.json
  def create
    @trip_feature = TripFeature.new(trip_feature_params)

    respond_to do |format|
      if @trip_feature.save
        format.html { redirect_to trip_feature_url(@trip_feature), notice: "Trip feature was successfully created." }
        format.json { render :show, status: :created, location: @trip_feature }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trip_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_features/1 or /trip_features/1.json
  def update
    respond_to do |format|
      if @trip_feature.update(trip_feature_params)
        format.html { redirect_to trip_feature_url(@trip_feature), notice: "Trip feature was successfully updated." }
        format.json { render :show, status: :ok, location: @trip_feature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trip_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_features/1 or /trip_features/1.json
  def destroy
    @trip_feature.destroy!

    respond_to do |format|
      format.html { redirect_to trip_features_url, notice: "Trip feature was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_feature
      @trip_feature = TripFeature.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_feature_params
      params.require(:trip_feature).permit(:trip_id, :kind, :slug, :description)
    end
end
