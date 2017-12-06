captcha = ARGV[0]

sum = 0
half_length = captcha.length / 2

captcha.split('').each_with_index do |char, index|
    
    digit = char.to_i
 
    if index >= half_length
        opposite_digit = captcha[index - half_length].to_i
    elsif captcha.length > 1
        opposite_digit = captcha[index + half_length].to_i
    end

    sum += digit if digit == opposite_digit
end

puts sum
