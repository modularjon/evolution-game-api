class AddParentTaxonRefToGames < ActiveRecord::Migration
  def change
    add_reference :games, :parent_taxon, index: true, foreign_key: true
  end
end
