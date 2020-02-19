puts "Cleaning database..."
Restaurant.destroy_all

#["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0049 171 6999 712', category: 'belgian' }
phuong_dong = { name: 'Phuoung Dong', address: 'Heerstrasse 45', phone_number: '0049 171 6999 716', category: 'chinese' }
ente = { name: 'Goldene Ente', address: 'Hellenstrasse 945', phone_number: '0049 171 6999 719', category: 'chinese' }
davicari = { name: 'Davi Cari', address: 'Burgplatz 2', phone_number: '0049 171 6999 714', category: 'italian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0049 171 6999 714', category: 'belgian' }

[dishoom, pizza_east, phuong_dong, ente, davicari].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
