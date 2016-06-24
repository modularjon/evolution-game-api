class CreateChildTaxons < ActiveRecord::Migration
  def change
    create_table :child_taxons do |t|
      t.string :taxon_name

      t.timestamps null: false
    end
  end
end
