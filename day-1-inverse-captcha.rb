captcha = ARGV[0]

sum = 0
captcha.split('').each_with_index do |char, index|
    
    digit = char.to_i
 
    if index == captcha.length - 1 and index != 0
        next_digit = captcha[0].to_i
    elsif captcha.length > 1
        next_digit = captcha[index + 1].to_i
    end

    sum += digit if digit == next_digit
end

puts sum
