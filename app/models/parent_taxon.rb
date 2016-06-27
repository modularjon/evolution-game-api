class ParentTaxon < ActiveRecord::Base
  has_many :child_taxons, inverse_of: :parent_taxon
  has_many :games, inverse_of: :parent_taxon
end
