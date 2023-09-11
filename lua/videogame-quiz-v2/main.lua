local CONFIG = require("config")
local DATABASE = require("database")
local QUESTIONS = DATABASE.QUESTIONS
SCORE = DATABASE.SCORE


local function greet(config)
    print(config.GREETING_MESSAGE)
    print("\n")
end

local function print_score()
    print("\n")
    print("-------------------")
    print("| Current Score:" .. SCORE .. " |")
    print("-------------------")
end

local function add_to_score(points_gained) 
    SCORE = SCORE + points_gained
end

local function display_question(question)
  local display_title = "Title: " .. question.title
    print(display_title)

    for index, alternative in ipairs(question.alternatives) do
        local separator = "- "
        local formatted_alternative = index .. separator .. alternative
        print(formatted_alternative)
    end
end

local function start(questions)
    for index, question in ipairs(questions) do 
        display_question(question)
        local user_choice = tonumber(io.read())
        if(question.alternatives[user_choice] == question.correct_answer) then 
            print("Correct! ")
            -- keep the : because points, 
            -- needs it to invoke the function correctly passing self as parameter 
            add_to_score(question:points())
            print_score()
        else 
            print("Wrong, no points gained!")
            print_score()
        end
        print("\n")
    end
end





greet(CONFIG)
start(QUESTIONS)
