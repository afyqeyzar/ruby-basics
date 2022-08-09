# bubble sort

def bubble_sort(numbers)
    loop do
        swapped = false

        (numbers.length - 1).times do |i|
            if numbers[i] > numbers[i+1]
                numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
                swapped = true
            end
        end
        break if swapped == false
    end
    numbers
end    

p bubble_sort([5,4,32,57,64,32,85,156,363,14,2])