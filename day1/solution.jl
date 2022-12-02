#!/usr/bin/env julia
# Advent of Code 2022 - Day 1 - @cosmojg

# Help the elves count their calories
function count_calories(input)
    # Initialize the calories array with a count of 0
    calories = [0]
    # For each line in the input file
    for line in eachline(input)
        # If the line is empty
        if length(strip(line)) == 0
            # Initialize a new element in the calories array with a count of 0
            push!(calories, 0)
            # If the line has calories
        else
            # Add the calories to the last element of the array
            calories[end] += parse(Int, line)
        end
    end
    # Sort the array from smallest to largest
    sort!(calories)
    # Return the last element and the sum of the last 3 elements
    println("The fattest elf has $(calories[end]) calories")
    println("The three fattest elves combined have $(sum(calories[end-2:end])) calories")
    return calories[end], sum(calories[(end - 2):end])
end

@show count_calories("input.txt")
