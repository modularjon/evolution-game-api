class ChildTaxonSerializer < ActiveModel::Serializer
  attributes :id, :taxon_name, :parent_taxon
end
