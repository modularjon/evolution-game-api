class AddParentTaxonRefToChildTaxons < ActiveRecord::Migration
  def change
    add_reference :child_taxons, :parent_taxon, index: true, foreign_key: true
  end
end
