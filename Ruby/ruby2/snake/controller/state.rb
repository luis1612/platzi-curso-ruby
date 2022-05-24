require_relative '../models/models'
module State
    class Game < Struct.new(:grid, :food, :snake)
        attr_accessor :valid

        def initialize(grid, food, snake)
            @valid = true
            super(grid, food, snake)
        end

        def draw                                                          
            food.draw(self) 
            snake.draw(self)
        end

        def key_pressed(key)
            if valid_direction?(key)
                Events::send_envent(key)
                snake.change_direction(key)                
            end           
        end

        def valid?
            if !inside_frame? or snake.eat_itself?
                self.valid = false
            end
            return self.valid
        end 
        
        def check_for_food()
            any_food?()            
        end

        private
        def any_food?
            new_coord = snake.get_next_coord()
            if new_coord.eq?(food) 
               snake.grow_up(food)
               food.realocate(grid)                                   
            end
        end
        def inside_frame?
            head=snake.get_head()
            return (grid.width > head.x and head.x >= 0 and head.y >= 0 and head.y < grid.height)
        end

        def valid_direction?(key)
            new_direction = Events::get_direction(key)
            case snake.current_direction
            when Events::RIGHT
                return (new_direction != Events::LEFT)
            when Events::LEFT
                return (new_direction != Events::RIGHT)
            when Events::UP
                return (new_direction != Events::DOWN)
            when Events::DOWN
                return (new_direction != Events::UP)                
            end    
        end
        
    end
    
    def self.get_state
        State::Game.new(
            Model::Grid.new(40, 30, 20),
            Model::Food.new(20, 20),
            Model::Snake.new([Model::Coord.new(2, 0), Model::Coord.new(1, 0), Model::Coord.new(0, 0)])
        )        
    end
    
end