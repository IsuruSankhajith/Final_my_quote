class QuotecategoriesController < ApplicationController
  before_action :set_quotecategory, only: %i[ show edit update destroy ]

  # GET /quotecategories or /quotecategories.json
  def index
    @quotecategories = Quotecategory.all
  end

  # GET /quotecategories/1 or /quotecategories/1.json
  def show
  end

  # GET /quotecategories/new
  def new
    @quotecategory = Quotecategory.new
  end

  # GET /quotecategories/1/edit
  def edit
  end

  # POST /quotecategories or /quotecategories.json
  def create
    @quotecategory = Quotecategory.new(quotecategory_params)

    respond_to do |format|
      if @quotecategory.save
        format.html { redirect_to quotecategory_url(@quotecategory), notice: "Quotecategory was successfully created." }
        format.json { render :show, status: :created, location: @quotecategory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quotecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotecategories/1 or /quotecategories/1.json
  def update
    respond_to do |format|
      if @quotecategory.update(quotecategory_params)
        format.html { redirect_to quotecategory_url(@quotecategory), notice: "Quotecategory was successfully updated." }
        format.json { render :show, status: :ok, location: @quotecategory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quotecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotecategories/1 or /quotecategories/1.json
  def destroy
    @quotecategory.destroy

    respond_to do |format|
      format.html { redirect_to quotecategories_url, notice: "Quotecategory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotecategory
      @quotecategory = Quotecategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quotecategory_params
      params.fetch(:quotecategory, {})
    end
end
