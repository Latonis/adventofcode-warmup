local function getInput(fileName)
    local fileIn = io.open(fileName)

    if (fileIn == nil)
    then
        return
    end

    local lines = fileIn:lines()
    return lines
end

local function solveProblem(input)
    Previous = nil
    IncreaseCount = 0
    for line in input do
        value = tonumber(line)
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

local input = getInput("./input")

solveProblem(input)
