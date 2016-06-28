# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(jon ben dan quinton).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'p',
               password_confirmation: nil)
end

reptile = ParentTaxon.create( taxon_name: 'reptile' )
mammal = ParentTaxon.create( taxon_name: 'mammal' )
bird = ParentTaxon.create( taxon_name: 'bird' )
fish = ParentTaxon.create( taxon_name: 'fish' )

%w(snake turtle crocodile dinosaur).each do |name|
  taxon_name = "#{name}"
  next if ChildTaxon.exists? taxon_name: taxon_name
  child = ChildTaxon.create(taxon_name: taxon_name)
  reptile.child_taxons << child
end

%w(mouse dog lemur human).each do |name|
  taxon_name = "#{name}"
  next if ChildTaxon.exists? taxon_name: taxon_name
  child = ChildTaxon.create(taxon_name: taxon_name)
  mammal.child_taxons << child
end

%w(ostrich finch duck hawk).each do |name|
  taxon_name = "#{name}"
  next if ChildTaxon.exists? taxon_name: taxon_name
  child = ChildTaxon.create(taxon_name: taxon_name)
  bird.child_taxons << child
end

%w(shark lamprey flounder parrotfish).each do |name|
  taxon_name = "#{name}"
  next if ChildTaxon.exists? taxon_name: taxon_name
  child = ChildTaxon.create(taxon_name: taxon_name)
  fish.child_taxons << child
end
