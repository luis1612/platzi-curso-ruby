module Model
    class Food < Coord            
    
        def draw(state)
            set_color('random')
            super(state)                      
        end

        def realocate(grid)
            self.remove()
            self.x = rand(grid.width) 
            self.y = rand(grid.height) 
        end
    end
end