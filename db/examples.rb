# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

# %w(jon ben dan quinton).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'p',
#                password_confirmation: nil)
# end

# parent_taxons = ParentTaxon.create([{ taxon_name: 'reptile' },
#                                     { taxon_name: 'mammal' },
#                                     { taxon_name: 'bird' },
#                                     { taxon_name: 'fish' }])

# reptile = ParentTaxon.create( taxon_name: 'reptile' )
# mammal = ParentTaxon.create( taxon_name: 'mammal' )
# bird = ParentTaxon.create( taxon_name: 'bird' )
# fish = ParentTaxon.create( taxon_name: 'fish' )
# snake = ChildTaxon.create({ taxon_name: 'snake'})

# reptile.child_taxons << snake
# %w(snake turtle crocodile dinosaur).each do |name|
#   taxon_name = "#{name}"
#   next if ChildTaxon.exists? taxon_name: taxon_name
#   child = ChildTaxon.create(taxon_name: taxon_name)
#   reptile.child_taxons << child
# end
#
# %w(mouse dog lemur human).each do |name|
#   taxon_name = "#{name}"
#   next if ChildTaxon.exists? taxon_name: taxon_name
#   child = ChildTaxon.create(taxon_name: taxon_name)
#   mammal.child_taxons << child
# end
#
# %w(ostrich finch duck hawk).each do |name|
#   taxon_name = "#{name}"
#   next if ChildTaxon.exists? taxon_name: taxon_name
#   child = ChildTaxon.create(taxon_name: taxon_name)
#   bird.child_taxons << child
# end
#
# %w(shark lamprey flounder parrotfish).each do |name|
#   taxon_name = "#{name}"
#   next if ChildTaxon.exists? taxon_name: taxon_name
#   child = ChildTaxon.create(taxon_name: taxon_name)
#   fish.child_taxons << child
# end
# reptile = ParentTaxon.find_by(taxon_name: 'reptiles').child_taxons << ChildTaxon.create([{ taxon_name: 'snake' },
#                                                             { taxon_name: 'turtle' },
#                                                             { taxon_name: 'crocodile' },
#                                                             { taxon_name: 'dinosaur' }])
#
# mammal = ParentTaxon.find_by(taxon_name: 'mammal').child_taxons << ChildTaxon.create([{ taxon_name: 'mouse' },
#                                                           { taxon_name: 'dog' },
#                                                           { taxon_name: 'lemur' },
#                                                           { taxon_name: 'human' }])
#
# bird = ParentTaxon.find_by(taxon_name: 'bird').child_taxons << ChildTaxon.create([{ taxon_name: 'ostrich' },
#                                                         { taxon_name: 'finch' },
#                                                         { taxon_name: 'duck' },
#                                                         { taxon_name: 'hawk' }])
#
# fish = ParentTaxon.find_by(taxon_name: 'fish').child_taxons << ChildTaxon.create([{ taxon_name: 'shark' },
#                                                         { taxon_name: 'lamprey' },
#                                                         { taxon_name: 'flounder' },
#                                                         { taxon_name: 'parrotfish' }])
