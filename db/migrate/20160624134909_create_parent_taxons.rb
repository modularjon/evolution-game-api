class CreateParentTaxons < ActiveRecord::Migration
  def change
    create_table :parent_taxons do |t|
      t.string :taxon_name

      t.timestamps null: false
    end
  end
end
