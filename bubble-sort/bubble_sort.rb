def bubble_sort(array)
    
    for i in 0...array.length-1

        for i in 0...array.length-1

            if array[i] > array[i+1]

                number_to_rise = array[i]
                number_to_lower = array[i+1]

                array[i] = number_to_lower
                array[i+1] = number_to_rise

            end

        end
    
    end

    puts array

end

array = [4,3,78,2,0,2]

bubble_sort(array)