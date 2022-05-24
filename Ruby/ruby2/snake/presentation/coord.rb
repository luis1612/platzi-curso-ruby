require 'ruby2d'

module Model
    class Coord < Struct.new(:x, :y)

        def initialize(x, y)
            super(x, y)   
            @fig = Square.new(x: @x, y: @y, color: 'red', size: 0)            
        end

        def draw(state)
            @fig.x = (x * state.grid.ratio)
            @fig.y = (y * state.grid.ratio)
            @fig.size = state.grid.ratio
            @fig.add()            
        end      

        def remove
            @fig.remove()
        end

        def set_color(new_color)
            @fig.color = new_color
        end

        def eq?(coord)            
            self.x == coord.x and self.y == coord.y
        end
    end
end