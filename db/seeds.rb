require "faker"

puts 'Creating 10 fake articles...'
10.times do
  task = Task.new(
    title: Faker::Pokemon.move.to_s,
    content: "www.#{Faker::Pokemon.location}/#{Faker::Pokemon.name}.com",
  )
  task.save!
end
puts 'Finished!'

