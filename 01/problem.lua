local function getInput(fileName)
    local fileIn = io.open(fileName)

    if (fileIn == nil)
    then
        return
    end

    local lines = fileIn:lines()
    return lines
end

local function solveProblem1(input)
    Previous = nil
    IncreaseCount = 0
    for line in input do
        local value = tonumber(line)
        if (Previous == nil)
        then
            Previous = value
        end

        if (value > Previous)
        then
            IncreaseCount = IncreaseCount + 1
        end
        Previous = value
    end
print("The value increased " .. IncreaseCount .. " times")
end


local function solveProblem2(input)
    Lines = {}
    Count = 0
    -- do things here to solve problem
    for line in input do
        Lines[Count] = tonumber(line)
        Count = Count + 1
    end

    IncreaseCount = 0

    for i=2, #Lines-1 do
        local leftHalf = Lines[i] + Lines[i-1] + Lines[i-2]
        local rightHalf = Lines[i] + Lines[i-1] + Lines[i+1]
        if (rightHalf > leftHalf) then
            IncreaseCount = IncreaseCount + 1
        end
    end

    print("The value increased " .. IncreaseCount .. " times")
    -- do things above here to solve the problem
end

local input = getInput("./input")
solveProblem1(input)

input = getInput("./input")
solveProblem2(input)