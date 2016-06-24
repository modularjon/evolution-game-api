class ParentTaxon < ActiveRecord::Base
  has_many :child_taxons, inverse_of: :parent_taxon
end
