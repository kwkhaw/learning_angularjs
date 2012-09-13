# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

photographer1 = Photographer.create!(:name => 'Ricardo Pacheco')
photographer2 = Photographer.create!(:name => 'Jupira Fotografo')

gallery = photographer1.galleries.create!(:title => 'Galeria 1')
6.times do |i|
  gallery.photos.create!(:image => File.new(Rails.root + "app/assets/images/2_#{i + 1}.jpg"), :title => "Galeria 1 - Foto: #{i + 1}")
end
gallery = photographer2.galleries.create!(:title => 'Galeria 2')
7.times do |i|
  gallery.photos.create!(:image => File.new(Rails.root + "photos/1_#{i + 1}.jpg"), :title => "Galeria 2 - Foto: #{i + 1}")
end
gallery = photographer2.galleries.create!(:title => 'Galeria 3')
8.times do |i|
  gallery.photos.create!(:image => File.new(Rails.root + "photos/3_#{i + 1}.jpg"), :title => "Galeria 3 - Foto: #{i + 1}")
end
