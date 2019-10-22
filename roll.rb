rolls = ARGV[0].to_i.times.map { 1 + Random.rand(6) }
puts rolls.inspect

wild = rolls[0]

if (wild == 1) then
  rolls = rolls.sort[1...-1]
  puts "fumble! #{rolls.inspect}"
elsif (wild == 6) then
  while (wild == 6) do
    wild = 1 + Random.rand(6)
    puts "wild reroll: #{wild}"
    rolls << wild
  end
  puts "Rolls after rerolls #{rolls.inspect}"
end

total = rolls.inject(0) { |acc,x| acc = acc + x }
puts "Total: #{total}"
