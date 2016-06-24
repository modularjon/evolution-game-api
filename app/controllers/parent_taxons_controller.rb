class ParentTaxonsController < ApplicationController
  before_action :set_parent_taxon, only: [:show, :update, :destroy]

  # GET /parent_taxons
  # GET /parent_taxons.json
  def index
    @parent_taxons = ParentTaxon.all

    render json: @parent_taxons
  end

  # GET /parent_taxons/1
  # GET /parent_taxons/1.json
  def show
    render json: @parent_taxon
  end

  # POST /parent_taxons
  # POST /parent_taxons.json
  def create
    @parent_taxon = ParentTaxon.new(parent_taxon_params)

    if @parent_taxon.save
      render json: @parent_taxon, status: :created, location: @parent_taxon
    else
      render json: @parent_taxon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parent_taxons/1
  # PATCH/PUT /parent_taxons/1.json
  def update
    @parent_taxon = ParentTaxon.find(params[:id])

    if @parent_taxon.update(parent_taxon_params)
      head :no_content
    else
      render json: @parent_taxon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parent_taxons/1
  # DELETE /parent_taxons/1.json
  def destroy
    @parent_taxon.destroy

    head :no_content
  end

  private

    def set_parent_taxon
      @parent_taxon = ParentTaxon.find(params[:id])
    end

    def parent_taxon_params
      params.require(:parent_taxon).permit(:taxon_name)
    end
end
