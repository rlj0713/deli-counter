# Write your code here.
katz_deli = []

def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
        new_array = []
        i = 1
        while i <= katz_deli.length
            new_array << (" #{i}. #{katz_deli[i - 1]}")
            i += 1
        end
        new_array = new_array.join("")
        puts "The line is currently:#{new_array}"
    end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.find_index(name) + 1} in line."
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli = katz_deli.shift
    end
end
