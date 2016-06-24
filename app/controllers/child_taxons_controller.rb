class ChildTaxonsController < ApplicationController
  before_action :set_child_taxon, only: [:show, :update, :destroy]

  # GET /child_taxons
  # GET /child_taxons.json
  def index
    @child_taxons = ChildTaxon.all

    render json: @child_taxons
  end

  # GET /child_taxons/1
  # GET /child_taxons/1.json
  def show
    render json: @child_taxon
  end

  # POST /child_taxons
  # POST /child_taxons.json
  def create
    @child_taxon = ChildTaxon.new(child_taxon_params)

    if @child_taxon.save
      render json: @child_taxon, status: :created, location: @child_taxon
    else
      render json: @child_taxon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /child_taxons/1
  # PATCH/PUT /child_taxons/1.json
  def update
    @child_taxon = ChildTaxon.find(params[:id])

    if @child_taxon.update(child_taxon_params)
      head :no_content
    else
      render json: @child_taxon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /child_taxons/1
  # DELETE /child_taxons/1.json
  def destroy
    @child_taxon.destroy

    head :no_content
  end

  private

    def set_child_taxon
      @child_taxon = ChildTaxon.find(params[:id])
    end

    def child_taxon_params
      params.require(:child_taxon).permit(:taxon_name)
    end
end
