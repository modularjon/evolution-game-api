class ChildTaxon < ActiveRecord::Base
  belongs_to :parent_taxon, inverse_of: :child_taxons
end
