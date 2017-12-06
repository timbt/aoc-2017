def fetch_data
    return File.readlines('day-2-input')
end

def parse_data (data)
    parsed_data = Array.new
    data.each do |line|
        row = Array.new
        line.split.each {|value| row.push(value.to_i)}
        parsed_data.push(row)
    end
    return parsed_data
end

def line_differences (table) 
    def smallest_in (list) 
        return list.sort[0]
    end
     
    def largest_in (list)
        return list.sort.reverse[0]
    end
    
    differences = Array.new
    table.each {|row| differences.push(largest_in(row) - smallest_in(row))}
    return differences
end

def sum(list)
    return list.inject(0) {|sum, i| sum + i}
end

def line_dividends(table)
    def dividend(row)
        row.each do |x|
            row.each do |y|
                return x / y if x > y and x % y == 0
            end
        end
    end

    dividends = Array.new
    table.each { |row| dividends.push(dividend(row)) }
    return dividends
end

spreadsheet = parse_data(fetch_data)
puts sum(line_differences(spreadsheet))
puts sum(line_dividends(spreadsheet))
