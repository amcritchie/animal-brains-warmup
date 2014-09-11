require 'csv'

file = CSV.new('lib/assets/Animals.csv')

out_file = File.new("seeds.rb", "w")
blah = 0
CSV.foreach('lib/assets/Animals.csv') do |row|
  row.inspect
  if blah != 0
  out_file.puts("Brain.create!(
      animal: '#{row[0]}',
      body: #{row[1]},
      brain: #{row[2]}
  )")
  end
  blah += 3

end

