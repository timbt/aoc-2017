def round_up_to_odd(num)
   return num.ceil.odd? ? num.ceil : num.ceil + 1
end

def get_spiral_iteration(num)
    return (round_up_to_odd(Math.sqrt(num)) + 1) / 2
end

memory_location = ARGV[0].to_f
puts get_spiral_iteration(memory_location)

