class ParentTaxonSerializer < ActiveModel::Serializer
  attributes :id, :taxon_name, :child_taxons
end
