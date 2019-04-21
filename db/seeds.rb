5.times do |gig|
  Gig.create!(date: Date.today, location: "Subterranean", artists: "Tideshift, Dead Sun, and Manchester Orchestra")
end

puts "5 Gigs have been created"