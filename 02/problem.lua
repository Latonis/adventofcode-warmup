local function split (inputstr, sep)
    if sep == nil then
       sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
       table.insert(t, str)
    end
    return t
 end

local function getInput(fileName)
    local fileIn = io.open(fileName)

    -- check if file was read successfully
    if (fileIn == nil)
    then
        return
    end

    local lines = fileIn:lines()
    return lines
end

local function solveProblem(input)
    -- do things here to solve problem
    local horizontal = 0
    local depth = 0
    local aim = 0
    for line in input do
        local splitLine = split(line)
        local keyword = splitLine[1]
        local val = tonumber(splitLine[2])
        local len = #keyword
        if (len == 7) then
            horizontal = horizontal + val
            depth = depth + (aim * val)
        elseif (len == 4) then
            -- depth = depth + val
            aim = aim + val
        elseif (len == 2) then
            -- depth = depth - val
            aim = aim - val
        end
    end
    print(horizontal, depth, count)
    print("Horizontal position * final depth is " .. (horizontal * depth))
    -- do things above here to solve the problem
end

local input = getInput("./input")

solveProblem(input)
