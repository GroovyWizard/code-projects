CONFIG = require("config")

QUESTIONS = {
    {
        title = "What is the first game from The Legend of Zelda series?",
        alternatives = {"The Legend of Zelda",
            "The Legend of Zelda Wind Waker", 
            "The Legend of Zelda Twilight Princess", 
            "The Legend of Zelda II: The Adventure of Link"},
        difficulty = CONFIG.MIN_DIFFICULTY,
        correct_answer = "The Legend of Zelda",
        points = function(self)
            return self.difficulty * CONFIG.POINTS_MULTIPLIER
        end
    },
    {
        title = "Which Nintendo console has motion features included in its controller and was marketed as such?",
        alternatives = {"Nintendo Wii",
            "Nintendo GameCube", 
            "Super Nintendo", 
            "Game & Watch"},
        difficulty = CONFIG.MIN_DIFFICULTY,
        correct_answer = "Nintendo Wii",
        points = function(self)
            return self.difficulty * CONFIG.POINTS_MULTIPLIER
        end
    }
}

SCORE = 0;

return {
    QUESTIONS = QUESTIONS,
    SCORE = SCORE
}
