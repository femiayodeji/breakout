VictoryState = Class{__includes = BaseState}

function VictoryState:enter(params)
    self.level = params.level
    self.score = params.score
    self.paddle = params.paddle
    self.health = params.health
    self.ball = params.ball
end

function VictoryState:update(dt)
    self.paddle:update(dt)
end

function VictoryState:render()
    self.paddle:render()
    self.ball:render()

    renderHealth(self.health)
    renderScore(self.score)

    love.graphics.setFont(gFonts['large'])
    love.graphics.printf(
        "Level " .. tostring(self.level) .. " complete!", 
        0,
        VIRTUAL_HEIGHT / 4, VIRTUAL_WIDTH, 
        'center'
    )

    love.graphics.setFont(gFonts['medium'])
    love.graphics.printf(
        'Press Enter to serve!', 
        0, 
        VIRTUAL_HEIGHT / 2, VIRTUAL_WIDTH, 
        'center'
    )
end
